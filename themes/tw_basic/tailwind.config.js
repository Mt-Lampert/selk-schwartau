/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["content/**/*.md", "layouts/**/*.html"],
  theme: {
    extend: {
      'font-family': {
        body: [ "Helvetica Neue", "Helvetica", 'sans-serif', 'Arial' ],
      }
    },
  },
  plugins: [],
}