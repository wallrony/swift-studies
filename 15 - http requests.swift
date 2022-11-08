import AppKit

let url = URL(string: "https://pokeapi.co/api/v2/pokemon/")!
var request = URLRequest(url: url)
request.setValue("application/json", forHTTPHeaderField: "Content-Type")

struct Pokemon: Decodable {
  let name: String
  let url: String
}

struct PokemonPage: Decodable {
  let count: Int
  let next: String?
  let previous: String?
  let results: [Pokemon]
}

do {
  let session = URLSession.shared
  let (data, response) = try await session.data(for: request)
  guard (response as? HTTPURLResponse)?.statusCode == 200 else {
    exit(1)
  }
  if let pokemons = try? JSONDecoder().decode(PokemonPage.self, from: data) {
    print("POKEMONS:", pokemons)
  } else {
    print("NO POKEMONS")
  }
} catch let err {
  print("Deu erro", err.localizedDescription)
}
