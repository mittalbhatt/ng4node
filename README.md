<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signal Processing System Diagram</title>
    <script src="https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/dom-to-image@2.6.0/dist/dom-to-image.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/file-saver@2.0.5/dist/FileSaver.min.js"></script>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #2c3e50;
            line-height: 1.6;
            padding: 20px;
            min-height: 100vh;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        header {
            background: linear-gradient(90deg, #3498db, #2c3e50);
            color: white;
            padding: 25px;
            text-align: center;
        }
        h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }
        .description {
            font-size: 1.1rem;
            max-width: 800px;
            margin: 0 auto;
        }
        .content {
            display: flex;
            flex-direction: column;
            padding: 20px;
        }
        .diagram-container {
            background: #ecf0f1;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            overflow: auto;
        }
        .diagram {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-auto-rows: minmax(100px, auto);
            gap: 15px;
            min-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }
        .component {
            border-radius: 8px;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-weight: 600;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .component:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        .signal-collectors {
            background: linear-gradient(135deg, #64b3f4 0%, #3498db 100%);
            color: white;
            grid-column: 1 / 3;
        }
        .identity {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
            grid-column: 3;
        }
        .approval {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
            grid-column: 4;
        }
        .telemetry {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
            grid-column: 3;
            grid-row: 2;
        }
        .context {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
            grid-column: 4;
            grid-row: 2;
        }
        .signals {
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            color: white;
            grid-column: 1;
            grid-row: 3;
        }
        .slot {
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
            grid-column: 2;
            grid-row: 3;
        }
        .indexer {
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
            grid-column: 3;
            grid-row: 3;
        }
        .slot2 {
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
            grid-column: 4;
            grid-row: 3;
        }
        .executing-plan {
            background: linear-gradient(135deg, #d4fc79 0%, #96e6a1 100%);
            grid-column: 1 / 3;
            grid-row: 4;
        }
        .plan {
            background: linear-gradient(135deg, #d4fc79 0%, #96e6a1 100%);
            grid-column: 3;
            grid-row: 4;
        }
        .markers {
            background: linear-gradient(135deg, #84fab0 0%, #8fd3f4 100%);
            grid-column: 1;
            grid-row: 5;
        }
        .market {
            background: linear-gradient(135deg, #84fab0 0%, #8fd3f4 100%);
            grid-column: 2;
            grid-row: 5;
        }
        .synthesizer {
            background: linear-gradient(135deg, #84fab0 0%, #8fd3f4 100%);
            grid-column: 3 / 5;
            grid-row: 5;
        }
        .overrides {
            background: linear-gradient(135deg, #a3bded 0%, #6991c7 100%);
            color: white;
            grid-column: 1;
            grid-row: 6;
        }
        .override {
            background: linear-gradient(135deg, #a3bded 0%, #6991c7 100%);
            color: white;
            grid-column: 2;
            grid-row: 6;
        }
        .module {
            background: linear-gradient(135deg, #a3bded 0%, #6991c7 100%);
            color: white;
            grid-column: 3;
            grid-row: 6;
        }
        .execute {
            background: linear-gradient(135deg, #a3bded 0%, #6991c7 100%);
            color: white;
            grid-column: 4;
            grid-row: 6;
        }
        .overrides2 {
            background: linear-gradient(135deg, #e0c3fc 0%, #8ec5fc 100%);
            grid-column: 1;
            grid-row: 7;
        }
        .executor {
            background: linear-gradient(135deg, #e0c3fc 0%, #8ec5fc 100%);
            grid-column: 2;
            grid-row: 7;
        }
        .drift-conflict {
            background: linear-gradient(135deg, #e0c3fc 0%, #8ec5fc 100%);
            grid-column: 3 / 5;
            grid-row: 7;
        }
        .overrides3 {
            background: linear-gradient(135deg, #e0c3fc 0%, #8ec5fc 100%);
            grid-column: 1 / 5;
            grid-row: 8;
        }
        .controls {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin: 20px 0;
        }
        button {
            padding: 12px 25px;
            border: none;
            border-radius: 6px;
            background: #3498db;
            color: white;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background: #2980b9;
        }
        .instructions {
            background: #f8f9fa;
            border-left: 4px solid #3498db;
            padding: 20px;
            margin: 20px 0;
            border-radius: 0 8px 8px 0;
        }
        .instructions h2 {
            margin-bottom: 10px;
            color: #2c3e50;
        }
        .instructions ol {
            margin-left: 20px;
        }
        .instructions li {
            margin-bottom: 10px;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: #2c3e50;
            color: white;
            margin-top: 20px;
        }
        .arrow {
            position: absolute;
            width: 0;
            height: 0;
            border-style: solid;
        }
        @media (max-width: 1100px) {
            .diagram-container {
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Signal Processing System Diagram</h1>
            <p class="description">A visual representation of a signal processing system with components for collection, approval, execution, and management.</p>
        </header>
        
        <div class="content">
            <div class="instructions">
                <h2>How to Use This Diagram</h2>
                <ol>
                    <li>This diagram represents a signal processing system with various components</li>
                    <li>You can download the diagram as an image using the button below</li>
                    <li>Each component is color-coded based on its function in the system</li>
                    <li>Hover over components to see a visual highlight effect</li>
                </ol>
            </div>
            
            <div class="controls">
                <button onclick="downloadDiagram()">Download Diagram as Image</button>
            </div>
            
            <div class="diagram-container">
                <div class="diagram" id="diagram">
                    <div class="component signal-collectors">Signal Collectors</div>
                    <div class="component identity">Identity</div>
                    <div class="component approval">Approval</div>
                    <div class="component telemetry">Telemetry</div>
                    <div class="component context">Context</div>
                    <div class="component signals">Signals</div>
                    <div class="component slot">Slot</div>
                    <div class="component indexer">Indexer</div>
                    <div class="component slot2">Slot</div>
                    <div class="component executing-plan">Executing Plan</div>
                    <div class="component plan">Plan</div>
                    <div class="component markers">Markers</div>
                    <div class="component market">Market</div>
                    <div class="component synthesizer">Synthesizer</div>
                    <div class="component overrides">Overrides</div>
                    <div class="component override">Override</div>
                    <div class="component module">Module</div>
                    <div class="component execute">Execute</div>
                    <div class="component overrides2">Overrides</div>
                    <div class="component executor">Executor</div>
                    <div class="component drift-conflict">Drift & Conflict Manager</div>
                    <div class="component overrides3">Overrides</div>
                </div>
            </div>
            
            <div class="instructions">
                <h2>About This System</h2>
                <p>This diagram visualizes a signal processing system that includes:</p>
                <ul>
                    <li><strong>Signal Collection</strong> - Components for gathering and initial processing of signals</li>
                    <li><strong>Identity & Approval</strong> - Verification and authorization mechanisms</li>
                    <li><strong>Execution Plan</strong> - System for planning and executing processes</li>
                    <li><strong>Override Management</strong> - Components for handling exceptions and conflicts</li>
                </ul>
            </div>
        </div>
        
        <footer>
            <p>Signal Processing System Diagram | Created with HTML, CSS & JavaScript</p>
        </footer>
    </div>

    <script>
        function downloadDiagram() {
            const diagram = document.getElementById('diagram');
            
            html2canvas(diagram, {
                scale: 2,
                backgroundColor: '#ecf0f1'
            }).then(canvas => {
                canvas.toBlob(function(blob) {
                    saveAs(blob, 'signal-processing-diagram.png');
                });
            });
        }
        
        // Add some visual effects to show connections
        document.addEventListener('DOMContentLoaded', function() {
            const components = document.querySelectorAll('.component');
            
            components.forEach(component => {
                component.addEventListener('mouseenter', function() {
                    this.style.zIndex = '10';
                });
                
                component.addEventListener('mouseleave', function() {
                    this.style.zIndex = '1';
                });
            });
        });
    </script>
</body>
</html>
