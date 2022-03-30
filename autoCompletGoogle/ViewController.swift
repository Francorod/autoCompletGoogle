//
//  ViewController.swift
//  autoCompletGoogle
//
//  Created by Franco Rodrigues on 3/30/22.
//

import UIKit
import MapKit

class ViewController: UIViewController, UISearchResultsUpdating {

    
    let mapView = MKMapView()
    
    let searchVC = UISearchController(searchResultsController: ResultsViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Maps"
        view.addSubview(mapView)
        searchVC.searchBar.backgroundColor = .secondarySystemBackground
        searchVC.searchResultsUpdater = self
        navigationItem.searchController = searchVC
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mapView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.frame.size.width, height: view.frame.size.height - view.safeAreaInsets.top)
    }
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    


}

