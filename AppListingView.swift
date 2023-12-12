import SwiftUI

struct AppListingView: View {
    var body: some View {
        // NavigationView allows navigation between views.
        NavigationView {
            VStack{
                // ScrollView allows content to be scrollable vertically.
                ScrollView(.vertical, showsIndicators: true) {
                    VStack {
                        HStack(spacing:20) {
                            Image(systemName: "circle.square")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 125)
                            
                            VStack(alignment: .leading){
                                
                                Text("YOUR APP NAME")
                                    .font(.title)
                                    .bold()
                                
                                Text("Your app's subtitle")
                                    .foregroundColor(Color.gray)
                                    .padding(.bottom,40)
                                
                                HStack{
                                    Text("Get")
                                        .foregroundColor(Color.white)
                                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                                        .background(Color.blue)
                                        .cornerRadius(50, antialiased: true)
                                    
                                    Text("In-App Purchases")
                                        .foregroundColor(Color.gray)
                                        .font(.caption)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "square.and.arrow.up")
                                        .font(.system(size:28))
                                        .foregroundColor(Color.blue)
                                }
                                
                            }
                            
                        }
                        // ScrollView for horizontal scrolling.
                        ScrollView(.horizontal, showsIndicators: false) {
                            VStack{
                                
                                Divider().padding()
                                // Horizontal stack for ratings, age, etc.
                                HStack{
                                    HStack {
                                        VStack{
                                            Text("1.2K RATINGS")
                                                .font(.subheadline)
                                            
                                            Text("4.0")
                                                .font(.title)
                                                .bold()
                                            
                                            HStack(spacing: 4){
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star")
                                            }.font(.system(size:12))
                                        }.frame(width:100)
                                        
                                        Divider()
                                            .frame(height: 50)
                                        
                                        VStack{
                                            Text("AGE")
                                                .font(.subheadline)
                                            
                                            Text("13")
                                                .font(.title)
                                                .bold()
                                            
                                            Text("Years Old")
                                            
                                            
                                        }.frame(width:100)
                                        
                                        Divider()
                                            .frame(height: 50)
                                        
                                        VStack{
                                            Text("CATEGORY")
                                                .font(.subheadline)
                                            
                                            Image(systemName: "scribble")
                                                .font(.system(size:28))
                                            
                                            Text("Enter Here")
                                                .font(.subheadline)
                                            
                                        }.frame(width:100)
                                        
                                        Divider()
                                            .frame(height: 50)
                                    }
                                    
                                    HStack {
                                        VStack{
                                            Text("DEVELOPER")
                                                .font(.subheadline)
                                            
                                            Image(systemName: "person.crop.square")
                                                .font(.system(size:28))
                                            
                                            Text("Your Name")
                                                .font(.subheadline)
                                            
                                        }.frame(width:100)
                                        
                                        Divider()
                                            .frame(height: 50)
                                        
                                        VStack{
                                            Text("LANGUAGE")
                                                .font(.subheadline)
                                            
                                            Text("EN")
                                                .font(.title)
                                                .bold()
                                            
                                            Text("Any more?")
                                                .font(.subheadline)
                                            
                                        }.frame(width:100)
                                        
                                        Divider()
                                            .frame(height: 50)
                                        
                                        VStack{
                                            Text("SIZE")
                                                .font(.subheadline)
                                            
                                            Text("77.2")
                                                .font(.title)
                                                .bold()
                                            
                                            Text("MB")
                                                .font(.subheadline)
                                            
                                        }.frame(width:100)
                                        
                                    }
                                    
                                }.foregroundColor(Color.gray)
                                
                            }.frame(minHeight:0, maxHeight:.greatestFiniteMagnitude)
                        }.padding(.bottom, 20)
                        
                        // ScrollView for horizontal scrolling of images.
                        ScrollView(.horizontal){
                            
                            HStack(spacing: 16) {
                                //Navigation links to full screen views for each image.
                                NavigationLink(destination:ImageFullScreenView(imageName:"01")) {
                                    Image("01")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }
                                
                                NavigationLink(destination:ImageFullScreenView(imageName:"02")) {
                                    Image("02")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }

                                NavigationLink(destination:ImageFullScreenView(imageName:"03")) {
                                    Image("03")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }
                                
                                NavigationLink(destination:ImageFullScreenView(imageName:"04")) {
                                    Image("04")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }
                                
                                NavigationLink(destination:ImageFullScreenView(imageName:"05")) {
                                    Image("05")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }
                            
                            }
                            
                        }.frame(minHeight:0, maxHeight:.greatestFiniteMagnitude)
                        
                        Divider().padding()
                        
                        // App description text
                        Text("SAMPLE DESCRIPTION: The Ultimate Widget App transforms your device into a productivity and creativity powerhouse with its intuitive interface and powerful tools. This app offers customizable widgets, seamless integration across major operating systems, real-time syncing, advanced security, and a user-friendly interface. SuperWidget boosts productivity, enhances creativity, and helps you stay organized with cross-platform accessibility. The latest version 2.0 features improved performance, new widget options, and bug fixes. Compatible with iOS 12.0 and later, SuperWidget is available in English, Spanish, French, German, and Japanese, suitable for users aged 4 and above. For support, contact support@superwidgetapp.com. Check out our Privacy Policy and Terms of Use, and follow us on Facebook, Twitter, and Instagram. Download SuperWidget now for the ultimate widget experience!")
                            .font(.caption)
                                        
                    }.padding(20)
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AppListingView_Previews: PreviewProvider {
    static var previews: some View {
        AppListingView()
    }
}
