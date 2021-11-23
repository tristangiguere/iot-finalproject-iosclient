// App Homepage

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        
        // Main Page Layout
        NavigationView {
            ZStack {
                
                // App Background Color
                Color("Main")
                    .ignoresSafeArea()
            
                VStack (spacing: 15){
                    
                    // Top Heading Title section
                    HStack (alignment: .center){
                        Text("Home")
                            .font(.custom("Mont Blanc Bold", size: 50))
                            .tracking(-2)
                            .foregroundColor(Color("Third"))
                        Spacer()
                        Image(systemName: "arrow.clockwise")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16)
                            .foregroundColor(Color("Third"))
                            .frame(width: 34, height: 34)
                            .background(Color("Main"))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(color: Color(.white).opacity(0.10), radius: 12, x: 0.0, y: 1)
                            .shadow(color: Color(.white).opacity(0.35), radius: 5, x: 0.0, y: 5)
                    }
                    .padding(.top)

                        // My sensors section title
                        HStack {
                            VStack (spacing: 3){
                                Text("My Sensors".uppercased())
                                    .font(.custom("Mont Blanc Regular", size: 14))
                                    .tracking(-0.56)
                                    .foregroundColor(Color("Fourth"))

                                Rectangle()
                                    .frame(width: 87, height: 0.8)
                                    .foregroundColor(Color("Fourth"))
                            }
                            
                            // Push content to left
                            Spacer()
                        }
                    
                    // Sensor Cards
                    NavigationLink(
                        destination: Text("Sensor Info"),
                        label: {
                            SensorCard(currentTemp: 19, currentHumidity: 55, lastUpdated: "17:58", sensorName: "Basement")
                        })
                    NavigationLink(
                        destination: Text("Sensor Info"),
                        label: {
                            SensorCard(currentTemp: 18.5, currentHumidity: 43, lastUpdated: "17:58", sensorName: "Living Room")
                        })
                    
                        Spacer()
                        
                    }
                    .frame(maxWidth: .infinity ,maxHeight: .infinity)
                    .padding(.horizontal, 30)

            }
            .navigationTitle("Home")
            .navigationBarHidden(true)
            .preferredColorScheme(.dark)
        }

        // Insert content here.
    }
}


// Component to display sensor information in a card view
struct SensorCard: View {
    var currentTemp: Double = 19
    var currentHumidity = 55
    var lastUpdated = "17:58"
    var sensorName = "Basement"
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 50){
                
                // Icons + Last Updated
                VStack (alignment: .leading, spacing: 12){
                    // Icons
                    HStack (spacing: 16){
                        // Temperature
                        HStack (alignment: .center, spacing: 5){
                            Image(systemName: "thermometer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 20)
                                .foregroundColor(Color("Fourth"))
                            
                            Text("\(currentTemp) ºC".uppercased())
                                .font(.custom("Mont Blanc Regular", size: 16))
                                .tracking(-0.64)
                                .foregroundColor(Color("Fourth"))
                            
                        }
                        
                        // Humidity
                        HStack (alignment: .center, spacing: 5){
                            Image(systemName: "drop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 20)
                                .foregroundColor(Color("Fourth"))
                            
                            Text("\(currentHumidity) %".uppercased())
                                .font(.custom("Mont Blanc Regular", size: 16))
                                .tracking(-0.64)
                                .foregroundColor(Color("Fourth"))
                        }
                        
                    }
                    
                    Text("Last Updated: \(lastUpdated)".uppercased())
                        .font(.custom("Mont Blanc SemiBold", size: 10))
                        .foregroundColor(Color("Fourth").opacity(0.5))
                    
                }
                
                Text(sensorName)
                    .font(.custom("Mont Blanc SemiBold", size: 30))
                    .tracking(-1.2)
                    .foregroundColor(Color("Third"))
                
            }
            
            Spacer()
            
        }.padding(22)
        .frame(maxWidth: .infinity)
        .background(Color(.black).opacity(0.4))
        .cornerRadius(10)
        .shadow(color: Color(.black).opacity(0.5), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
    }
}























struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
