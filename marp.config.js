const marpKrokiPlugin = require('./kroki-plugin')

module.exports = {
  engine: ({ marp }) => marp.use(marpKrokiPlugin)
}
