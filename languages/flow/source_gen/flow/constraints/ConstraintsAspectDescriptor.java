package flow.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseConstraintsAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import java.util.Map;
import java.util.HashMap;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ConstraintsAspectDescriptor extends BaseConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }

  @Override
  public ConstraintsDescriptor getConstraints(SAbstractConcept concept) {
    {
      SAbstractConcept cncpt = concept;
      Integer preIndex = indices_2qnle6_a0c.get(cncpt);
      int switchIndex = (preIndex == null ? -1 : preIndex);
      switch (switchIndex) {
        case 0:
          if (true) {
            return new ChildConcept_Constraints();
          }
          break;
        case 1:
          if (true) {
            return new RootConcept_Constraints();
          }
          break;
        default:
          // default 
      }
    }
    return new BaseConstraintsDescriptor(concept);
  }
  private static Map<SAbstractConcept, Integer> buildConceptIndices(SAbstractConcept... concepts) {
    HashMap<SAbstractConcept, Integer> res = new HashMap<SAbstractConcept, Integer>();
    int counter = 0;
    for (SAbstractConcept c : concepts) {
      res.put(c, counter++);
    }
    return res;
  }
  private static final Map<SAbstractConcept, Integer> indices_2qnle6_a0c = buildConceptIndices(MetaAdapterFactory.getConcept(0x3ac25d6afd494a5bL, 0x9c1ca6236d977d96L, 0x2068c047bc1763abL, "flow.structure.ChildConcept"), MetaAdapterFactory.getConcept(0x3ac25d6afd494a5bL, 0x9c1ca6236d977d96L, 0x2068c047bc17596eL, "flow.structure.RootConcept"));
}
