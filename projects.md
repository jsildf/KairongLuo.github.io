---
layout: default
title: Projects
---

<section class="hero-small">
    <h1 class="page-title">Projects</h1>
    <p class="page-subtitle">Showcasing my academic projects and practical implementations</p>
</section>

<section class="section">
    <div class="projects-intro">
        <p class="lead-text">
            Below are detailed showcases of my academic projects demonstrating skills in data science,
            machine learning, optimization algorithms, and transportation systems. Each project follows
            a structured approach: <strong>Problem → Data → Approach → Outcome</strong>.
        </p>
    </div>
</section>

<section class="section">
    <h2 class="section-title">Project 1: CVRP via Evolutionary Algorithms</h2>
    <div class="project-detail-card">
        <div class="project-meta">
            <span class="project-badge individual">Individual Project</span>
            <span class="project-date">Course: CDS526 - Evolutionary Computation</span>
        </div>

        <div class="project-detail-grid">
            <div class="project-detail-section">
                <h3>Problem</h3>
                <p>
                    The Capacitated Vehicle Routing Problem (CVRP) is a classic combinatorial optimization problem
                    where the goal is to find the most efficient routes for a fleet of vehicles to deliver goods to
                    a set of customers, subject to vehicle capacity constraints.
                </p>
                <ul class="project-bullets">
                    <li><strong>Given:</strong> A set of customers with demand requirements, a depot, and vehicles with fixed capacity</li>
                    <li><strong>Objective:</strong> Minimize total distance traveled while serving all customers</li>
                    <li><strong>Constraint:</strong> Each vehicle's total demand cannot exceed its capacity</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Data</h3>
                <p>
                    Standard CVRP benchmark instances from the A-n-series datasets:
                </p>
                <ul class="project-bullets">
                    <li><strong>A-n48-k7:</strong> 48 customers, 7 vehicles, BKS = 1076</li>
                    <li><strong>A-n53-k7:</strong> 53 customers, 7 vehicles, BKS = 1010</li>
                    <li><strong>A-n54-k7:</strong> 54 customers, 7 vehicles, BKS = 1167</li>
                    <li><strong>A-n55-k9:</strong> 55 customers, 9 vehicles, BKS = 1073</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Approach</h3>
                <p>Designed and implemented an evolutionary algorithm with customized operators:</p>
                <div class="approach-highlights">
                    <div class="approach-item">
                        <h4>Edge Recombination Crossover (ERX)</h4>
                        <p>Preserves adjacency information from parent solutions, maintaining good sub-route structures crucial for CVRP.</p>
                        <p class="tech-note">Time Complexity: O(n²)</p>
                    </div>
                    <div class="approach-item">
                        <h4>Hybrid Mutation Strategy</h4>
                        <p>Three mutation operators (Swap, Inversion, Insert) with equal probability for balanced local/global exploration.</p>
                    </div>
                    <div class="approach-item">
                        <h4>Tournament Selection (k=5)</h4>
                        <p>Provides balanced selection pressure while maintaining population diversity.</p>
                    </div>
                    <div class="approach-item">
                        <h4>Elitist (μ+λ) Survivor Selection</h4>
                        <p>Top 10% preserved as elites, ensuring good solutions are never lost.</p>
                    </div>
                </div>
            </div>

            <div class="project-detail-section">
                <h3>Outcome & Results</h3>
                <p>Evaluated over 30 independent runs on each benchmark instance:</p>

                <div class="results-table">
                    <table>
                        <thead>
                            <tr>
                                <th>Dataset</th>
                                <th>BKS</th>
                                <th>Avg Cost</th>
                                <th>Best Found</th>
                                <th>Gap%</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>A-n48-k7</td>
                                <td>1076</td>
                                <td>1365.00</td>
                                <td>1223</td>
                                <td>26.86%</td>
                            </tr>
                            <tr>
                                <td>A-n53-k7</td>
                                <td>1010</td>
                                <td>1365.83</td>
                                <td>1196</td>
                                <td>35.23%</td>
                            </tr>
                            <tr>
                                <td>A-n54-k7</td>
                                <td>1167</td>
                                <td>1545.83</td>
                                <td>1395</td>
                                <td>32.46%</td>
                            </tr>
                            <tr>
                                <td>A-n55-k9</td>
                                <td>1073</td>
                                <td>1450.23</td>
                                <td>1269</td>
                                <td>35.15%</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <p>Wilcoxon Signed-Rank Test confirmed statistically significant improvements (p < 0.05) over baseline.</p>

                <h4>Value Created</h4>
                <ul class="project-bullets">
                    <li>~50% improvement over baseline algorithm on average cost</li>
                    <li>Modular code architecture enabling easy experimentation</li>
                    <li>Comprehensive documentation and reproducible research</li>
                </ul>
            </div>
        </div>

        <div class="project-footer">
            <div class="technologies-used">
                <h4>Technologies Used</h4>
                <div class="tech-tags">
                    <span class="tech-tag">Python</span>
                    <span class="tech-tag">NumPy</span>
                    <span class="tech-tag">SciPy</span>
                    <span class="tech-tag">Matplotlib</span>
                    <span class="tech-tag">ReportLab</span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <h2 class="section-title">Project 2: Stock Market Data Analysis & Feature Engineering</h2>
    <div class="project-detail-card">
        <div class="project-meta">
            <span class="project-badge individual">Individual Project</span>
            <span class="project-date">Course: Statistics & Data Science</span>
        </div>

        <div class="project-detail-grid">
            <div class="project-detail-section">
                <h3>Problem</h3>
                <p>
                    Perform comprehensive exploratory data analysis (EDA) and feature engineering on historical
                    stock market data to prepare for predictive modeling tasks.
                </p>
                <ul class="project-bullets">
                    <li>Understand data quality, distributions, and patterns</li>
                    <li>Handle outliers and anomalies in financial data</li>
                    <li>Engineer meaningful features for stock prediction models</li>
                    <li>Reduce feature redundancy while preserving information</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Data</h3>
                <p>
                    Historical stock market data from S&P 500 companies:
                </p>
                <ul class="project-bullets">
                    <li><strong>Size:</strong> 619,029 rows × 7 columns</li>
                    <li><strong>Time Range:</strong> 2013-02-08 to 2018-02-07 (5 years)</li>
                    <li><strong>Stocks:</strong> 505 individual stocks</li>
                    <li><strong>Features:</strong> date, open, high, low, close, volume, Name</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Approach</h3>
                <div class="approach-highlights">
                    <div class="approach-item">
                        <h4>Exploratory Data Analysis</h4>
                        <p>Comprehensive EDA including descriptive statistics, distribution analysis, correlation heatmaps, and outlier detection using IQR method.</p>
                    </div>
                    <div class="approach-item">
                        <h4>Feature Engineering Pipeline</h4>
                        <p>Created 20 engineered features across 8 categories:</p>
                        <ul class="project-bullets">
                            <li><strong>Return Features:</strong> daily return, log return</li>
                            <li><strong>Technical Indicators:</strong> RSI-14, MACD, MACD_hist</li>
                            <li><strong>Volatility Features:</strong> Bollinger Band width, 20-day volatility</li>
                            <li><strong>Trend Features:</strong> Close-to-SMA ratio, price momentum</li>
                            <li><strong>Volume Features:</strong> Volume ratio, OBV change</li>
                        </ul>
                    </div>
                    <div class="approach-item">
                        <h4>Feature Selection</h4>
                        <p>Reduced features from 75 to 20 (-73%) while maintaining predictive power. High correlation pairs reduced from 45 to 8 (-82%).</p>
                    </div>
                </div>
            </div>

            <div class="project-detail-section">
                <h3>Key Findings</h3>
                <ul class="project-bullets">
                    <li>All OHLC price features show extremely high correlation (r ≈ 0.99+)</li>
                    <li>Price and volume show moderate positive correlation (r ≈ 0.5~0.7)</li>
                    <li>All distributions are positively skewed with heavy tails</li>
                    <li>Volume has the highest number of outliers (~59,500)</li>
                </ul>

                <h3>Outcome</h3>
                <ul class="project-bullets">
                    <li>Clean, analysis-ready dataset with 608,929 rows</li>
                    <li>StandardScaler-normalized version for ML modeling</li>
                    <li>Modeling recommendations: RandomForest, XGBoost, LSTM</li>
                    <li>Validation using TimeSeriesSplit to avoid data leakage</li>
                </ul>
            </div>
        </div>

        <div class="project-footer">
            <div class="technologies-used">
                <h4>Technologies Used</h4>
                <div class="tech-tags">
                    <span class="tech-tag">Python</span>
                    <span class="tech-tag">pandas</span>
                    <span class="tech-tag">NumPy</span>
                    <span class="tech-tag">Matplotlib</span>
                    <span class="tech-tag">Seaborn</span>
                    <span class="tech-tag">Scikit-learn</span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <h2 class="section-title">Project 3: TSP Solver with SUMO Visualization</h2>
    <div class="project-detail-card">
        <div class="project-meta">
            <span class="project-badge group">Group Project</span>
            <span class="project-date">Course: Transportation Systems / Simulation</span>
        </div>

        <div class="project-detail-grid">
            <div class="project-detail-section">
                <h3>Problem</h3>
                <p>
                    Build a benchmarking platform for Traveling Salesman Problem (TSP) algorithms with
                    SUMO (Simulation of Urban Mobility) integration for real-world route visualization.
                </p>
                <ul class="project-bullets">
                    <li>Lack of standardized testing environment for route planning algorithms</li>
                    <li>Manual implementation required for each algorithm comparison</li>
                    <li>Need for professional performance evaluation metrics</li>
                    <li>High barrier for new researchers to validate algorithm effectiveness</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Approach</h3>
                <div class="approach-highlights">
                    <div class="approach-item">
                        <h4>Multi-Algorithm TSP Solver</h4>
                        <p>Implemented 4 path planning algorithms with standardized interfaces:</p>
                        <ul class="project-bullets">
                            <li><strong>Nearest Neighbor + 2-opt:</strong> Greedy construction with local search improvement</li>
                            <li><strong>Genetic Algorithm + 2-opt:</strong> Evolutionary approach with crossover and mutation</li>
                            <li><strong>Simulated Annealing:</strong> Probabilistic local search with cooling schedule</li>
                            <li><strong>Ant Colony Optimization:</strong> Swarm intelligence based on pheromone trails</li>
                        </ul>
                    </div>
                    <div class="approach-item">
                        <h4>Benchmarking Platform</h4>
                        <p>Comprehensive evaluation system with automated test case generation, multi-algorithm comparison, and result export.</p>
                    </div>
                    <div class="approach-item">
                        <h4>SUMO Integration</h4>
                        <p>Real traffic simulation visualization with multi-route comparison, optimal path highlighting, and automatic view adjustment.</p>
                    </div>
                </div>
            </div>

            <div class="project-detail-section">
                <h3>My Contribution</h3>
                <ul class="project-bullets">
                    <li>Designed and implemented TSP solver core modules</li>
                    <li>Developed SUMO visualization integration (highlight_1_fixed.py)</li>
                    <li>Created performance metrics calculation system</li>
                    <li>Built result export and visualization modules</li>
                </ul>

                <h3>System Architecture</h3>
                <ul class="project-bullets">
                    <li><strong>UI Layer:</strong> Web-based interactive interface (Flask)</li>
                    <li><strong>Agent Layer:</strong> Natural language instruction parsing (Port 5000)</li>
                    <li><strong>TSP Service:</strong> Algorithm management and benchmarking (Port 5001)</li>
                    <li><strong>SUMO Visualization:</strong> Route rendering with multi-color support (Port 5555)</li>
                </ul>
            </div>
        </div>

        <div class="project-footer">
            <div class="technologies-used">
                <h4>Technologies Used</h4>
                <div class="tech-tags">
                    <span class="tech-tag">Python</span>
                    <span class="tech-tag">Flask</span>
                    <span class="tech-tag">SUMO</span>
                    <span class="tech-tag">ZMQ</span>
                    <span class="tech-tag">NumPy</span>
                    <span class="tech-tag">Matplotlib</span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <h2 class="section-title">Project 4: Cryptographic Cipher Implementation</h2>
    <div class="project-detail-card">
        <div class="project-meta">
            <span class="project-badge individual">Individual Project</span>
            <span class="project-date">Course: Foundation of Computer Science / Programming</span>
        </div>

        <div class="project-detail-grid">
            <div class="project-detail-section">
                <h3>Problem</h3>
                <p>
                    Implement classical cryptographic ciphers to understand fundamental concepts
                    of encryption, decryption, and cryptanalysis.
                </p>
                <ul class="project-bullets">
                    <li>Letter frequency analysis on plaintext/ciphertext</li>
                    <li>Caesar cipher encryption and decryption</li>
                    <li>Understanding symmetric key cryptography principles</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Approach</h3>
                <div class="approach-highlights">
                    <div class="approach-item">
                        <h4>Letter Frequency Counter</h4>
                        <p>Program to count occurrences of each letter (a-z) in a text file, demonstrating frequency distribution analysis.</p>
                    </div>
                    <div class="approach-item">
                        <h4>Caesar Cipher</h4>
                        <p>Classic substitution cipher with configurable shift value:</p>
                        <ul class="project-bullets">
                            <li>Encrypt: Shift letters backward by n positions</li>
                            <li>Decrypt: Shift letters forward by n positions</li>
                            <li>Handles both uppercase and lowercase</li>
                            <li>Preserves non-alphabetic characters</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="project-detail-section">
                <h3>Learning Outcomes</h3>
                <ul class="project-bullets">
                    <li>Understanding of character encoding (ASCII, Unicode)</li>
                    <li>Modular arithmetic in cryptography</li>
                    <li>Foundation for understanding modern encryption (AES, RSA)</li>
                    <li>Importance of key security in cryptographic systems</li>
                </ul>
            </div>
        </div>

        <div class="project-footer">
            <div class="technologies-used">
                <h4>Technologies Used</h4>
                <div class="tech-tags">
                    <span class="tech-tag">Python</span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <h2 class="section-title">Project 5: Slope Maintenance Request System (SRR)</h2>
    <div class="project-detail-card">
        <div class="project-meta">
            <span class="project-badge group">Group Project</span>
            <span class="project-date">Course: Geotechnical Engineering / Civil Engineering</span>
        </div>

        <div class="project-detail-grid">
            <div class="project-detail-section">
                <h3>Problem</h3>
                <p>
                    Analysis and documentation of Slope Maintenance Request (SRR) cases for the
                    Hong Kong Geotechnical Engineering Office, including slope inspections, 
                    maintenance requests, and tree management.
                </p>
                <ul class="project-bullets">
                    <li>SRR (Slope Request Record) case management</li>
                    <li>RCC (Routine Church Check) inspection documentation</li>
                    <li>TMO (Tree Management Office) tree inspection records</li>
                    <li>45+ real-world cases analyzed</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Data Sources</h3>
                <ul class="project-bullets">
                    <li><strong>SRR Examples:</strong> Cases including slope blockages, tree obstruction, crack reports</li>
                    <li><strong>RCC Examples:</strong> Maintenance issues like loose netting, rat holes, bee nests</li>
                    <li><strong>TMO Examples:</strong> Tree audits, dead branch removal, Form 1 and Form 2 inspections</li>
                    <li><strong>Excel Data:</strong> SRR data 2021-2024, slope database, tree inventory</li>
                </ul>
            </div>

            <div class="project-detail-section">
                <h3>Case Types Analyzed</h3>
                <div class="approach-highlights">
                    <div class="approach-item">
                        <h4>SRR Cases</h4>
                        <p>Slope-related complaints including water channel blockages, tree-related issues, crack investigations.</p>
                    </div>
                    <div class="approach-item">
                        <h4>RCC Cases</h4>
                        <p>Regular maintenance checks covering slope features, drainage, vegetation management.</p>
                    </div>
                    <div class="approach-item">
                        <h4>TMO Cases</h4>
                        <p>Tree management including hazard tree assessment, audit inspections, dead branch removal.</p>
                    </div>
                </div>
            </div>

            <div class="project-detail-section">
                <h3>Skills Demonstrated</h3>
                <ul class="project-bullets">
                    <li>Geotechnical engineering terminology and standards</li>
                    <li>Case documentation and report writing</li>
                    <li>Data management with Excel and CSV files</li>
                    <li>Understanding of Hong Kong slope safety system</li>
                    <li>Professional communication in technical writing</li>
                </ul>
            </div>
        </div>

        <div class="project-footer">
            <div class="technologies-used">
                <h4>Technologies Used</h4>
                <div class="tech-tags">
                    <span class="tech-tag">Microsoft Excel</span>
                    <span class="tech-tag">CSV</span>
                    <span class="tech-tag">PDF Analysis</span>
                    <span class="tech-tag">Documentation</span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <h2 class="section-title">Summary of Skills Applied Across Projects</h2>
    <div class="projects-grid">
        <div class="project-card">
            <h3>Technical Skills</h3>
            <ul class="project-bullets">
                <li>Python, SQL, R programming</li>
                <li>Machine Learning (classification, regression)</li>
                <li>Data preprocessing and feature engineering</li>
                <li>Algorithm design and optimization</li>
                <li>Statistical analysis and hypothesis testing</li>
            </ul>
        </div>
        <div class="project-card">
            <h3>Data Tools</h3>
            <ul class="project-bullets">
                <li>pandas, NumPy, SciPy</li>
                <li>Matplotlib, Seaborn, Plotly</li>
                <li>Scikit-learn, TensorFlow/PyTorch basics</li>
                <li>Excel, CSV, JSON data handling</li>
            </ul>
        </div>
        <div class="project-card">
            <h3>Domain Knowledge</h3>
            <ul class="project-bullets">
                <li>Financial data analysis</li>
                <li>Transportation/logistics optimization</li>
                <li>Evolutionary computation</li>
                <li>Geotechnical engineering basics</li>
            </ul>
        </div>
    </div>
</section>
