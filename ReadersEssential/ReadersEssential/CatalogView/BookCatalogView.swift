import SwiftUI

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let coverImage: String
    let price: String
}

struct BookCatalogView: View {
    // Mock data for now
    let books: [Book] = [
        Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien", coverImage: "lotr", price: "$12.99"),
        Book(title: "Pride and Prejudice", author: "Jane Austen", coverImage: "pride", price: "$9.99"),
        Book(title: "1984", author: "George Orwell", coverImage: "1984", price: "$10.99"),
        Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", coverImage: "hitchhikers", price: "$7.99"),
        Book(title: "To Kill a Mockingbird", author: "Harper Lee", coverImage: "mockingbird", price: "$11.99"),
        Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", coverImage: "gatsby", price: "$8.99"),
        Book(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez", coverImage: "solitude", price: "$14.99"),
        Book(title: "Crime and Punishment", author: "Fyodor Dostoevsky", coverImage: "crime", price: "$13.99"),
        Book(title: "Moby-Dick", author: "Herman Melville", coverImage: "mobydick", price: "$15.99"),
        Book(title: "Jane Eyre", author: "Charlotte Brontë", coverImage: "janeeyre", price: "$10.99")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                    ForEach(books) { book in
                        BookCardView(book: book)
                    }
                }
                .padding()
            }
            .navigationTitle("Book Catalog")
        }
    }
}

struct BookCardView: View {
    let book: Book

    var body: some View {
        VStack(alignment: .leading) {
            Image(book.coverImage)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(8)
                .shadow(radius: 3)
            Text(book.title)
                .font(.headline)
                .lineLimit(2)
            Text(book.author)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(book.price)
                .font(.footnote)
                .foregroundColor(.secondary)

        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}



struct BookCatalogView_Previews: PreviewProvider {
    static var previews: some View {
        BookCatalogView()
    }
}
