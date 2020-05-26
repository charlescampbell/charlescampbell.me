module.exports = config = {};

config.bumpFiles = [
  {
    filename: "VERSION",
    type: "plain-text"
  }
];

const host = "https://github.com/charlescampbell";

config.commitUrlFormat = `${host}/charlescampbell.me/commit/{{hash}}`;

config.compareUrlFormat = `${host}/charlescampbell.me/compare/{{previousTag}}..{{currentTag}}`;
