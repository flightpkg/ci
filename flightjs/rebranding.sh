grep "pnpm-lock.yaml" pnpm -lr | xargs sed -i 's/pnpm-lock.yaml/flightjs-lock.yaml/g'
grep "pnpm" pnpm -lr | xargs sed -i 's/pnpm/flightjs/g'
grep "@flightjs" pnpm -lr | xargs sed -i 's/@flightjs/@pnpm/g'

mv pnpm/src/pnpm.ts pnpm/src/flightjs.ts

grep "https://github.com/flightjs/flightjs" pnpm -lr | xargs sed -i 's/https:\/\/github.com\/flightjs\/flightjs/https:\/\/github.com\/flightpkg\/javascript/g'
