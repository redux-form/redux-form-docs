# Website for [redux-form.com](https://redux-form.com)

## Directory structure

- `~/oss/redux-form` – [`master` branch of `redux-form/redux-form`](https://github.com/redux-form/redux-form)
- `~/oss/redux-form-examples` – [`master` branch of `redux-form/redux-form-examples`](https://github.com/redux-form/redux-form-examples)
- `~/oss/redux-form-docs` – [`master` branch of `redux-form/redux-form-docs`](https://github.com/redux-form/redux-form-docs)
  - This is auto deployed via Netlify to `redux-form.com` (or it was before I transfered ownership to the `redux-form` org)
  - Contains [`publish.js`](https://github.com/redux-form/redux-form-docs/blob/master/src/publish.js), a horrible pre-Gatsby static site generator
- `~/oss/redux-form-website-template` – [`master` branch of `redux-form/redux-form-website-template`](https://github.com/redux-form/redux-form-website-template)
  - This is where styling tweaks sometimes need to be made
  - It needs to be `npm publish`'d and the version updated in all the examples `package.json`s and `redux-form-docs` repos to get the new changes.

## How to Publish

1. `cd ~/oss/redux-form-examples`
2. `./scripts/build-examples.sh --rebuild`
3. `cd ~/oss/redux-form-docs`
4. `./pub.sh 8.5.6` (to publish v8.5.6)
5. `git add 8.5.6`
6. Edit line 8 of `index.html` to point to latest version
7. `git commit -a -m "v8.5.6"`
8. `git push`
9. Wait 5-10 minutes for Netlify to do the rest
