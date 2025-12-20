#!/usr/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Hikaru Yoshida
# SPDX-License-Identifier: BSD-3-Clause


ng () {
    echo "${1}行目が違う"
    res=1
}

res=0

#NOMAL INPUT
out=$(echo -e "2 1 1\n1 2 1\n0 1 2" | ./inverse)
expected=$'0.600 -0.200 -0.200\n-0.400 0.800 -0.200\n0.200 -0.400 0.600'
[ "${out}" = "${expected}" ] || ng "$LINENO"

# STRANGE INPUT 
out=$(echo -e "1 2 3\n4 5 6\n7 8 9" | ./inverse)
[ "${out}" = "ERROR" ] || ng "$LINENO"

out=$(echo -e "1 2\n1 1" | ./inverse)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 1 | ./inverse)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ | ./inverse)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo a | ./inverse)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  | ./inverse)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# --- 結果表示 ---
[ "$res" = 0 ] && echo "OK"
exit $res

