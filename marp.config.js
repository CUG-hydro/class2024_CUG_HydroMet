const { Marp } = require("@marp-team/marp-core");
const markdownItContainer = require("markdown-it-container");
// const markdownItSup = require("markdown-it-sup");
// const markdownItSub = require("markdown-it-sub");
const marpKrokiPlugin = require('./kroki-plugin')

module.exports = {
  engine: (opts) => {
    const marp = new Marp({
      ...opts,
      html: true,
    });
    marp.use(marpKrokiPlugin);
    // plugins
    // marp.use(markdownItSup);
    // marp.use(markdownItSub);
    /// containers
    const addContainerBox = (marp, tagName, className, modify = x => x) => {
      const re = new RegExp(`^${tagName}:?(.*)$`);
      const boxClass = `block ${className === "block" ? "" : className}`;
      const headClass = `block-head ${className === "block" ? "" : className + "-head"}`;
      marp.use(markdownItContainer, tagName, {
        validate: (params) => {
          return params.trim().match(re);
        },
        render: (tokens, idx) => {
          const m = tokens[idx].info.trim().match(re);
          const name = modify(m ? m[1] : "");
          if (tokens[idx].nesting === 1) {
            let ret = `<div class="${boxClass}">`;
            if (name) {
              ret += `<p class="${headClass}">${name}</p>`;
            }
            ret += `\n`;
            return ret;
          } else {
            return `</div>\n`;
          }
        }
      });
    };

    addContainerBox(marp, "block", "block");
    addContainerBox(marp, "black", "block");
    addContainerBox(marp, "info", "info", name => name || "info");
    addContainerBox(marp, "blue", "info", name => name || "info");
    addContainerBox(marp, "warn", "warn", name => name || "warn");
    addContainerBox(marp, "red", "warn", name => name || "warn");
    addContainerBox(marp, "footnote", "footnote");

    // const theme = marp.themeSet.add(marp.themeSet.pack("default", {
    //   after: ``,
    // }));
    // marp.themeSet.addTheme(theme);
    return marp;
  },
};
