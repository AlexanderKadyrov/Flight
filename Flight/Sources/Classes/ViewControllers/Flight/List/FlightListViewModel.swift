import TabloidView
import Foundation

final class FlightListViewModel {
    
    private let flightController = FlightController()
    
    private var sections: [[FlightTabloidCellViewModel]] {
        let cellViewModels = flightController
            .rndItems()
            .map { FlightTabloidCellViewModel(model: $0) }
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
