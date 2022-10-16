module Tests


open Tablecloth.Int
open Expecto

[<Tests>]
let tests =
    testList
        "IntTests"
        [ testCase "zero"

          <| fun _ ->
              let expected = 0
              Expect.equal expected zero "0"

          testCase "one"

          <| fun _ ->
              let expected = 1
              Expect.equal expected one "1"

          testCase "minimum_value"

          <| fun _ ->
              let expected = minimum_value - 1
              Expect.equal expected maximum_value "minimum_value"

          testCase "maximum_value"

          <| fun _ ->
              let expected = maximum_value + 1
              Expect.equal expected minimum_value "maximum_value"

          testCase "add"
          <| fun _ ->
              let expected = 7006
              Expect.equal expected (add 3002 4004) "3002+4004 = 7006"


          testCase "substruct"
          <| fun _ ->
              let expected = 3
              Expect.equal expected (subtract 4 1) "4-1=3"

          ]
