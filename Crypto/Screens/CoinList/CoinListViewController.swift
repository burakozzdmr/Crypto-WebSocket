//
//  CoinListViewController.swift
//  Crypto
//
//  Created by Burak Özdemir on 10.09.2025.
//

import UIKit

class CoinListViewController: UIViewController {

    // MARK: - Properties
    
    private let favoritesLabel: UILabel = {
        let label: UILabel = .init()
        label.text = "Favorites"
        label.textColor = .priceTextWhite
        label.font = .systemFont(ofSize: 17, weight: .medium)
        return label
    }()
    
    private lazy var favoritePairListCollectionView: UICollectionView = {
        let flowLayout: UICollectionViewFlowLayout = .init()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 16
        flowLayout.minimumLineSpacing = 16
        flowLayout.itemSize = CGSize(width: 96, height: 96)
        
        let collectionView: UICollectionView = .init(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    private let pairsLabel: UILabel = {
        let label: UILabel = .init()
        label.text = "Pairs"
        label.textColor = .priceTextWhite
        label.font = .systemFont(ofSize: 17, weight: .medium)
        return label
    }()
    
    private lazy var pairListTableView: UITableView = {
        let tableView: UITableView = .init()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 64
        return tableView
    }()
    
    private let viewModel: CoinListViewModel
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - Inits
    
    init(viewModel: CoinListViewModel = .init()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Privates

private extension CoinListViewController {
    func setupUI() {
        addViews()
        configureLayout()
        
        view.backgroundColor = .primaryBackground
    }
    
    func addViews() {
        view.addSubviews([
            favoritesLabel,
            favoritePairListCollectionView,
            pairsLabel,
            pairListTableView
        ])
    }
    
    func configureLayout() {
        favoritesLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            $0.leading.equalToSuperview().offset(8)
        }
        
        favoritePairListCollectionView.snp.makeConstraints {
            $0.top.equalTo(favoritesLabel.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        pairsLabel.snp.makeConstraints {
            $0.top.equalTo(favoritePairListCollectionView.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(8)
        }
        
        pairListTableView.snp.makeConstraints {
            $0.top.equalTo(pairsLabel.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
    }
}

// MARK: - UICollectionViewDataSource

extension CoinListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return .init()
    }
}

// MARK: - UICollectionViewDelegate

extension CoinListViewController: UICollectionViewDelegate {
    
}

// MARK: - UITableViewDataSource

extension CoinListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return .init()
    }
}

// MARK: - UITableViewDelegate

extension CoinListViewController: UITableViewDelegate {
    
}
