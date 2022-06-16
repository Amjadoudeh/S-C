import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count // the total number items in the this array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategory()[indexPath.row] // the good way to return an array from a function
            cell.updateView(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
}


