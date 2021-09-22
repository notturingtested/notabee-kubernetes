module.exports = {
  extends: [
    // add more generic rulesets here, such as:
    // 'eslint:recommended',
    //   'plugin:vue/vue3-recommended',
    'plugin:vue/recommended' // Use this if you are using Vue.js 2.x.
  ],
  rules: {
    semi: [2, "never"],
    'arrow-parens': 0,
    'no-labels': ['error', { allowLoop: true }],
    'generator-star-spacing': 0,
    'no-debugger': process.env.NODE_ENV === 'production' ? 2 : 0,
    'no-lonely-if': ['error'],
    camelcase: 1,
    "indent": [2, 2]
  }
}