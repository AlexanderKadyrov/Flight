import TabloidView
import Foundation

final class FlightListViewModel {
    
    private let flightController = FlightController()
    
    private var sections: [[FlightListTabloidCellViewModel]] {
        let cellViewModels = flightController
            .rndItems()
            .map { FlightListTabloidCellViewModel(model: $0) }
        return [cellViewModels]
    }
    
    let tabloidViewModel = TabloidViewModel()
    
    init() {
        fetchItems()
    }
    
    func fetchItems() {
        tabloidViewModel.sections = sections
    }
}
