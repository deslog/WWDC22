import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable{
    private let name: String
    init(_ name: String){
        self.name = name
    }
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        print(name)
        print("\n------------------------\n",Bundle.main,"\n------------------------\n")
        let path = Bundle.main.path(forResource: name, ofType: "gif")
        let url = URL(fileURLWithPath: path!)
        let data = try! Data(contentsOf: url)
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        webView.scrollView.isScrollEnabled = false
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context:Context){
        uiView.reload()
    }
}
