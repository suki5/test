#!/bin/sh
START_CALL_BACK="pkill claymore"
FINISH_CALL_BACK="/opt/miners/claymore/claymore -eworker QS003 -minspeed -190 -r 1 -dbg -1 -wd 0 -colors 0 -epool stratum+tcp://eth.uupool.cn:8008 -ewal 0x6fff52149a128b452d8f3413f692851b44e215f4 -epsw x -epool stratum+tcp://: -ewal 0x6fff52149a128b452d8f3413f692851b44e215f4 -epsw x"
MINING_ADDRESS="zil://0x28a2b90f145c91c43d4ac6985f8c8a3a5b64ae1e.worker1@xyz.zilliqa.network:80/api"
./zilminer -v 256 -R --farm-recheck 1000 --farm-retries 100 --retry-delay 30 --work-timeout=99999 --max-submit=1 --ergodicity=2 --pow-start "$START_CALL_BACK" --pow-end "$FINISH_CALL_BACK" -P "$MINING_ADDRESS"
