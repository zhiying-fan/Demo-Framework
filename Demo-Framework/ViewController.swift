//
//  ViewController.swift
//  Demo-Framework
//
//  Created by Zhiying Fan on 2021/2/4.
//

import UIKit
import MapKit
import Maps
import GoogleMaps

class ViewController: UIViewController {
  @IBOutlet weak var appleMapView: MKMapView!
  @IBOutlet weak var mapContainer: UIView!

  var mapsResourceBundle: Bundle {
    let codeBundle = Bundle(for: MapView.self)
    guard
      let resourceBundlePath = codeBundle.path(forResource: "Maps", ofType: "bundle"),
      let resourceBundle = Bundle(path: resourceBundlePath)
    else {
      return codeBundle
    }
    return resourceBundle
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    if let googleMapView = mapsResourceBundle.loadNibNamed("MapView", owner: self, options: nil)?.first as? MapView {
      mapContainer.addSubview(googleMapView)

      googleMapView.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        googleMapView.topAnchor.constraint(equalTo: mapContainer.topAnchor),
        googleMapView.bottomAnchor.constraint(equalTo: mapContainer.bottomAnchor),
        googleMapView.leadingAnchor.constraint(equalTo: mapContainer.leadingAnchor),
        googleMapView.trailingAnchor.constraint(equalTo: mapContainer.trailingAnchor),
      ])
    }
  }
}
