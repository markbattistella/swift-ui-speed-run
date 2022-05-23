//
//  ContentView.swift
//  swift-ui-speed-run
//
//  Created by Mark Battistella on 23/5/2022.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}


struct ContentView: View {
    var body: some View {

		ZStack(alignment: .top) {

			// image
			Image("bg")
				.resizable()
				.scaledToFill()
				.frame(maxWidth: UIScreen.main.bounds.width)
				.ignoresSafeArea()


			VStack {
				// top
				HStack {
					Image(systemName: "bolt.circle")
					Spacer()
					Image(systemName: "chevron.up")
						.frame(width: 36, height: 36)
						.background(Circle().foregroundColor(.white.opacity(0.2)))
					Spacer()
					Image(systemName: "livephoto")
				}
				.padding()
				.font(.title.weight(.light))
				.foregroundColor(.white)
				.frame(height: 100)
				.background(Color.black.opacity(0.4))

				// zoom

				Spacer()

				HStack(spacing: 20) {
					Text("0.5")
						.frame(width: 36, height: 36)
						.background(Color.black.opacity(0.5))
						.cornerRadius(36)
					Text("1x")
						.frame(width: 48, height: 48)
						.foregroundColor(.yellow)
						.background(Color.black.opacity(0.5))
						.cornerRadius(36)
					Text("3")
						.frame(width: 36, height: 36)
						.background(Color.black.opacity(0.5))
						.cornerRadius(36)
				}
				.foregroundColor(.white)
				.font(.callout.weight(.bold))

				// bottom
				VStack {

					// modes
					HStack(spacing: 15) {
						Text("CINEMATIC")
						Text("VIDEO")
						Text("PHOTO")
							.foregroundColor(.yellow)
						Text("PORTRAIT")
						Text("PANO")
					}
					.foregroundColor(.white)
					.font(.callout.weight(.semibold))
					.mask(
						LinearGradient(
							colors: [.white, .black, .black, .white],
							startPoint: .leading,
							endPoint: .trailing
						)
					)

					HStack {
						Image("bg")
							.resizable()
							.frame(width: 56, height: 56)
							.cornerRadius(12)

						Spacer()

						ZStack {
							Circle()
								.frame(width: 70, height: 70)
								.overlay(Circle().stroke(.white, lineWidth: 3))

							Circle()
								.frame(width: 64, height: 64)
								.foregroundColor(.white)
						}

						Spacer()

						Image(systemName: "arrow.triangle.2.circlepath")
							.foregroundColor(.white)
							.frame(width: 42, height: 42)
							.font(.title2)
							.background(Color.white.opacity(0.2))
							.cornerRadius(42)

					}.padding()
				}
				.frame(maxWidth: .infinity, minHeight: 200)
				.background(Color.black.opacity(0.4))
			}
		}
    }
}

