ast := (RBParser parseExpression: 'Trait1 + Trait2 + Trait3 + Trait4').
ast := (RBParser parseExpression: '(Trait2 - {#c})').
ast := (RBParser parseExpression: 'Trait1 + (Trait2 - {#c})').
ast := (RBParser parseExpression: 'Trait1 + (Trait2 - {#c}) + Trait3').
ast := (RBParser parseExpression: 'Trait1 + (Trait2 - #(c ahoj bla: bla:bla:)) + Trait3').

composition := RG2TraitCompositionDefinition unnamed.

visitor := RG2TraitCompositionVisitor new.
visitor traitComposition: composition.
ast acceptVisitor: visitor.




