#!/usr/bin/env bats

setup () {
  cd "$BATS_TEST_DIRNAME"
  readonly cmd='../bin/hk'
}

@test 'for bash/zsh' {
  run "$cmd" <<-EOS
   111  ls path
 33111*   NAME=var   NAME2=var2    ls path
144847     \\n\nVAR0=foo \n VAR1='fo  o' \\n  VAR2="  fo o \"  "  sudo  -E HOGE=word  HUGE=world  -u root    ls   -ABFohv
EOS

  [[ "${lines[0]}" == "      2 ls" ]]
  [[ "${lines[1]}" == "      1 sudo" ]]
  [[ "$status" == 0 ]]
}

@test 'for fish' {
  run "$cmd" <<-EOS
ls path
     NAME=var   NAME2=var2    ls path
  \\n\nVAR0=foo \n VAR1='fo  o' \\n  VAR2="  fo o \"  "  sudo  -E HOGE=word  HUGE=world  -u root    ls   -ABFohv
EOS

  [[ "${lines[0]}" == "      2 ls" ]]
  [[ "${lines[1]}" == "      1 sudo" ]]
  [[ "$status" == 0 ]]
}
