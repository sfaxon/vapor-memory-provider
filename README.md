# Adds VaporMemory Provider for Vapor

Adds support for using the Fluent.MemoryDriver in the Vapor web framework, without deprication warninigs.

## Usage

```swift
import Vapor
import VaporMemory

let drop = Droplet()
try drop.addProvider(VaporMemory.Provider.self)
```

Storage is in memory, so restarting will remove everything, don't use for anything important!
