open System
type Fruit(name: string, colour) =
    static let mutable longestName = ""
    do longestName <- if name.Length > longestName.Length then name else longestName
    static member getLongestName() = longestName
    member this.name = name
    member val colour = colour with get, set 
    member this.describe() = sprintf "I am a %s fruit called %s" this.colour this.name
let main() = 
    printf "Count down from what number? "
    let start = Console.ReadLine() |> int
    for i = start downto 1 do
        printf "%d, " i
    printfn "lift off!"
    let fruits = [ Fruit("Apple", "Green");
                   Fruit("Strawberry", "Red");
                   Fruit("Orange", "Orange");
                   Fruit("Banana", "Yellow");
                   Fruit("Grape", "Green") ]
    let fruitCount = fruits.Length
    printfn "There are %d fruits..." fruitCount
    fruits |> List.iter (fun fruit -> 
        match fruit.name with
        | "Grape" -> fruit.colour <- "Purple"
        | _ -> ()
        printfn "%s" (fruit.describe())
    )
    printfn "The longest fruit name is %s!" (Fruit.getLongestName())
main()
