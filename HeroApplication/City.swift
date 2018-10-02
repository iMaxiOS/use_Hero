//
//  City.swift
//  HeroApplication
//
//  Created by Гранченко Максим on 10/2/18.
//  Copyright © 2018 Gary Tokman. All rights reserved.
//

import UIKit

struct City {
    var name: String
    var image: UIImage
    var shortDescription: String
    var description: String
    
    static var cities = [
        City(name: "Vancouver",
             image: #imageLiteral(resourceName: "Toronto"),
             shortDescription: "City in British Columbia",
             description: "Vancouver, a bustling west coast seaport in British Columbia, is among Canada’s densest, most ethnically diverse cities. A popular filming location, it’s surrounded by mountains, and also has thriving art, theatre and music scenes. Vancouver Art Gallery is known for its works by regional artists, while the Museum of Anthropology houses preeminent First Nations collections."),
        City(name: "Toronto",
             image: #imageLiteral(resourceName: "Vancouver"),
             shortDescription: "City in Ontario",
             description: "Toronto, the capital of the province of Ontario, is a major Canadian city along Lake Ontario’s northwestern shore. It's a dynamic metropolis with a core of soaring skyscrapers, all dwarfed by the iconic CN Tower. Toronto also has many green spaces, from the orderly oval of Queen’s Park to 400-acre High Park and its trails, sports facilities and zoo."),
        City(name: "Montreal",
             image: #imageLiteral(resourceName: "Montreal"),
             shortDescription: "City in Québec",
             description: "Montréal is the largest city in Canada's Québec province. It’s set on an island in the Saint Lawrence River and named after Mt. Royal, the triple-peaked hill at its heart. Its boroughs, many of which were once independent cities, include neighbourhoods ranging from cobblestoned, French colonial Vieux-Montréal – with the Gothic Revival Notre-Dame Basilica at its centre – to bohemian Plateau."),
        City(name: "Mishka",
             image: #imageLiteral(resourceName: "2"),
             shortDescription: "Mishka in Ukraine",
             description:  "Toronto, the capital of the province of Ontario, is a major Canadian city along Lake Ontario’s northwestern shore. It's a dynamic metropolis with a core of soaring skyscrapers, all dwarfed by the iconic CN Tower. Toronto also has many green spaces, from the orderly oval of Queen’s Park to 400-acre" ),
        City(name: "Olsakg",
             image: #imageLiteral(resourceName: "1"),
             shortDescription: "Miha",
             description: "Vancouver, a bustling west coast seaport in British Columbia, is among Canada’s densest, most ethnically diverse cities. A popular filming location, it’s surrounded by mountains, and also has thriving art, theatre and"),
        City(name: "Oslik",
             image: #imageLiteral(resourceName: "3"),
             shortDescription: "Miha made in China",
             description: "Montréal is the largest city in Canada's Québec province. It’s set on an island in the Saint Lawrence River and named after Mt. Royal, the triple-peaked hill at its heart. Its boroughs"),
        City(name: "Wolf",
             image: #imageLiteral(resourceName: "5"),
             shortDescription: "Wolf live in Sibir`",
             description: "Vancouver Art Gallery is known for its works by regional artists, while the Museum of Anthropology houses preeminent First Nations collections."),
        City(name: "Oduvanchik",
             image: #imageLiteral(resourceName: "4"),
             shortDescription: "Odivanchik is really nice flawer",
             description: "Vancouver Art Gallery is known for its works by regional artists, while the Museum of Anthropology houses preeminent First Nations collections.")
    ]
}
