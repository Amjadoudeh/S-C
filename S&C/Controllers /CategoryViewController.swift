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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductViewController", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productViewController = segue.destination as? ProductViewController {
            assert(sender as? Category != nil) // just to check the type if it's Category and if not it will carch the app in the build time.
            productViewController.initProduct(category: sender as! Category)
        }
    }
}


