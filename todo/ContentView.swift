import SwiftUI

struct ContentView: View {
    @StateObject private var globalState = GlobalState()
    @State private var userInput: String = ""
    
    func addItem() {
        if !userInput.isEmpty {
            globalState.todos.append(userInput)
            userInput = ""
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Todo List")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding([.top, .leading, .trailing])
            
            HStack {
                TextField("Type something...", text: $userInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 40)
                    .onSubmit {
                        addItem()
                    }
                
                Button(action: {
                    addItem()
                }) {
                    Text("Add")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding([.leading, .trailing])
            
            ScrollView {
                ForEach(globalState.todos.reversed(), id: \.self) { todo in
                    TodoItem(todoText: todo)
                }
            }
            .frame(maxWidth: .infinity)
            .padding([.leading, .trailing])
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
