module Tests


open Tablecloth.Int
open Expecto

[<Tests>]
let tests =
    testList
        "IntTests"
        [ test "add" {
              fun () ->
                  let expected = 7006
                  Expect.equal expected (add 3002 4004) "3002+4004 = 7006"
          }

          test "zero" {

              fun () ->
                  let expected = 0
                  Expect.equal expected zero "0"
          }

          ]
