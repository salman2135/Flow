<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:59c3cf65-1b2a-44bd-9070-06f87d3bb22c(flow.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="k2t0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.checkers(MPS.Core/)" />
    <import index="h9bu" ref="r:7e7e32d8-af70-42df-8993-b4832d5a25fe(jetbrains.mps.project.validation)" />
    <import index="j7l4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystemEngine.checker(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="6if8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.validation(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="urs3" ref="r:fc76aa36-3cff-41c7-b94b-eee0e8341932(jetbrains.mps.internal.collections.runtime)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="iwf0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.descriptor(MPS.Editor/)" />
    <import index="uddc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.menus.transformation(MPS.Editor/)" />
    <import index="uddc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.menus.transformation(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="65f2" ref="r:5070082c-725d-4756-a585-26ca093eba5e(flow.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1sdZ0ldA8GJ">
    <property role="TrG5h" value="StructureChecker" />
    <node concept="2tJIrI" id="aV859nD_1M" role="jymVt" />
    <node concept="3Tm1VV" id="1sdZ0ldA8GK" role="1B3o_S" />
    <node concept="3uibUv" id="aV859nD_18" role="1zkMxy">
      <ref role="3uigEE" to="phxh:3etVqSRRx7i" resolve="SpecificChecker" />
    </node>
    <node concept="3clFb_" id="aV859nD_35" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkModel" />
      <node concept="3Tm1VV" id="aV859nD_36" role="1B3o_S" />
      <node concept="_YKpA" id="aV859nD_37" role="3clF45">
        <node concept="3uibUv" id="aV859nD_38" role="_ZDj9">
          <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
          <node concept="3uibUv" id="aV859nD_39" role="11_B2D">
            <ref role="3uigEE" to="phxh:3etVqSRKzT$" resolve="ModelCheckerIssue" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="aV859nD_3b" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="aV859nD_3c" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="aV859nD_3d" role="3clF46">
        <property role="TrG5h" value="progressContext" />
        <node concept="3uibUv" id="aV859nD_3e" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3clFbS" id="aV859nD_3f" role="3clF47">
        <node concept="3clFbH" id="aV859nDI3V" role="3cqZAp" />
        <node concept="3cpWs8" id="aV859nDI7g" role="3cqZAp">
          <node concept="3cpWsn" id="aV859nDI7e" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="aV859nDI7Q" role="1tU5fm">
              <node concept="3uibUv" id="aV859nDIsR" role="_ZDj9">
                <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                <node concept="3uibUv" id="aV859nDIuV" role="11_B2D">
                  <ref role="3uigEE" to="phxh:3etVqSRKzT$" resolve="ModelCheckerIssue" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="aV859nE5Yb" role="33vP2m">
              <ref role="37wK5l" to="urs3:5Ffu4tBUyKm" resolve="fromList" />
              <ref role="1Pybhc" to="urs3:5Ffu4tBUyJF" resolve="ListSequence" />
              <node concept="2ShNRf" id="aV859nE6SU" role="37wK5m">
                <node concept="1pGfFk" id="aV859nEa6h" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="aV859nEbjk" role="1pMfVU">
                    <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                    <node concept="3uibUv" id="aV859nEcf_" role="11_B2D">
                      <ref role="3uigEE" to="phxh:3etVqSRKzT$" resolve="ModelCheckerIssue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aV859nEZrG" role="3cqZAp" />
        <node concept="3clFbH" id="aV859nEZs4" role="3cqZAp" />
        <node concept="3cpWs8" id="aV859nFgEG" role="3cqZAp">
          <node concept="3cpWsn" id="aV859nFgEH" role="3cpWs9">
            <property role="TrG5h" value="modelNodes" />
            <node concept="2I9FWS" id="aV859nFgEF" role="1tU5fm">
              <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2OqwBi" id="aV859nFgEI" role="33vP2m">
              <node concept="37vLTw" id="aV859nFgEJ" role="2Oq$k0">
                <ref role="3cqZAo" node="aV859nD_3b" resolve="model" />
              </node>
              <node concept="2SmgA7" id="aV859nFgEK" role="2OqNvi">
                <node concept="chp4Y" id="aV859nFgEL" role="1dBWTz">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aV859nFhoG" role="3cqZAp" />
        <node concept="3SKdUt" id="aV859nFcTB" role="3cqZAp">
          <node concept="3SKdUq" id="aV859nFcTD" role="3SKWNk">
            <property role="3SKdUp" value=" " />
          </node>
        </node>
        <node concept="2Gpval" id="aV859nFhKw" role="3cqZAp">
          <node concept="2GrKxI" id="aV859nFhKy" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="37vLTw" id="aV859nFi9O" role="2GsD0m">
            <ref role="3cqZAo" node="aV859nFgEH" resolve="modelNodes" />
          </node>
          <node concept="3clFbS" id="aV859nFhKA" role="2LFqv$">
            <node concept="3clFbH" id="XTsne5oEQk" role="3cqZAp" />
            <node concept="3SKdUt" id="XTsne5oFOe" role="3cqZAp">
              <node concept="3SKdUq" id="XTsne5oFOg" role="3SKWNk">
                <property role="3SKdUp" value="We would like to check if #instance of two is more than two or not, if yes, send an issue back" />
              </node>
            </node>
            <node concept="3clFbJ" id="XTsne5oHOK" role="3cqZAp">
              <node concept="3clFbS" id="XTsne5oHOM" role="3clFbx">
                <node concept="3clFbF" id="XTsne5pW6s" role="3cqZAp">
                  <node concept="2OqwBi" id="XTsne5pW6p" role="3clFbG">
                    <node concept="10M0yZ" id="XTsne5pW6q" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="XTsne5pW6r" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                      <node concept="Xl_RD" id="XTsne5pWFB" role="37wK5m">
                        <property role="Xl_RC" value="is an instance of one" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="XTsne5oTPS" role="3cqZAp">
                  <node concept="3clFbS" id="XTsne5oTPU" role="3clFbx">
                    <node concept="3clFbF" id="XTsne5pbJQ" role="3cqZAp">
                      <node concept="2YIFZM" id="XTsne5pbOH" role="3clFbG">
                        <ref role="37wK5l" to="phxh:3etVqSRRx7z" resolve="addIssue" />
                        <ref role="1Pybhc" to="phxh:3etVqSRRx7i" resolve="SpecificChecker" />
                        <node concept="37vLTw" id="XTsne5pbUt" role="37wK5m">
                          <ref role="3cqZAo" node="aV859nDI7e" resolve="results" />
                        </node>
                        <node concept="2GrUjf" id="XTsne5pc45" role="37wK5m">
                          <ref role="2Gs0qQ" node="aV859nFhKy" resolve="node" />
                        </node>
                        <node concept="Xl_RD" id="XTsne5pcJX" role="37wK5m">
                          <property role="Xl_RC" value="Number of instances of Concept \&quot;Two\&quot; is greater than 2" />
                        </node>
                        <node concept="10M0yZ" id="XTsne5pzUA" role="37wK5m">
                          <ref role="3cqZAo" to="phxh:3etVqSRKzLr" resolve="SEVERITY_ERROR" />
                          <ref role="1PxDUh" to="phxh:3etVqSRKzLq" resolve="ModelChecker" />
                        </node>
                        <node concept="Xl_RD" id="XTsne5p_3t" role="37wK5m">
                          <property role="Xl_RC" value="FLOW language error" />
                        </node>
                        <node concept="10Nm6u" id="XTsne5pGDX" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="XTsne5B7KK" role="3cqZAp" />
                    <node concept="3clFbH" id="XTsne5B8jM" role="3cqZAp" />
                    <node concept="3clFbH" id="XTsne5B8jX" role="3cqZAp" />
                    <node concept="3clFbH" id="XTsne5B8k9" role="3cqZAp" />
                    <node concept="3clFbH" id="XTsne5B8km" role="3cqZAp" />
                    <node concept="3clFbH" id="XTsne5B8k$" role="3cqZAp" />
                  </node>
                  <node concept="3eOSWO" id="XTsne5B_XL" role="3clFbw">
                    <node concept="2OqwBi" id="XTsne5oLF0" role="3uHU7B">
                      <node concept="2OqwBi" id="XTsne5oJr8" role="2Oq$k0">
                        <node concept="2GrUjf" id="XTsne5oJk_" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="aV859nFhKy" resolve="node" />
                        </node>
                        <node concept="2Rf3mk" id="XTsne5oK9Q" role="2OqNvi">
                          <node concept="1xMEDy" id="XTsne5oK9S" role="1xVPHs">
                            <node concept="chp4Y" id="XTsne5oKfZ" role="ri$Ld">
                              <ref role="cht4Q" to="65f2:21CK4uW5QeF" resolve="ChildConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="XTsne5oPqG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="XTsne5pb_p" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="XTsne5oSJA" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="XTsne5oIw4" role="3clFbw">
                <node concept="2GrUjf" id="XTsne5oIm1" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="aV859nFhKy" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="XTsne5oJc4" role="2OqNvi">
                  <node concept="chp4Y" id="XTsne5oJel" role="cj9EA">
                    <ref role="cht4Q" to="65f2:21CK4uW5P_I" resolve="RootConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="XTsne5qZp9" role="3cqZAp" />
            <node concept="3clFbH" id="XTsne5qZZD" role="3cqZAp" />
            <node concept="3clFbH" id="aV859nFjPL" role="3cqZAp" />
            <node concept="3SKdUt" id="XTsne5oEoa" role="3cqZAp">
              <node concept="3SKdUq" id="XTsne5oEoc" role="3SKWNk">
                <property role="3SKdUp" value="checking for constraints" />
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BIS5" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="aV859nFiZQ" role="8Wnug">
                <node concept="3cpWsn" id="aV859nFiZR" role="3cpWs9">
                  <property role="TrG5h" value="cc" />
                  <node concept="3uibUv" id="aV859nFiZS" role="1tU5fm">
                    <ref role="3uigEE" to="k2t0:~ConstraintsChecker" resolve="ConstraintsChecker" />
                  </node>
                  <node concept="2ShNRf" id="aV859nFiZT" role="33vP2m">
                    <node concept="1pGfFk" id="aV859nFiZU" role="2ShVmc">
                      <ref role="37wK5l" to="k2t0:~ConstraintsChecker.&lt;init&gt;()" resolve="ConstraintsChecker" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BIS6" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="aV859nFjQJ" role="8Wnug">
                <node concept="3cpWsn" id="aV859nFjQK" role="3cpWs9">
                  <property role="TrG5h" value="lec" />
                  <node concept="3uibUv" id="aV859nFjQL" role="1tU5fm">
                    <ref role="3uigEE" to="k2t0:~LanguageErrorsComponent" resolve="LanguageErrorsComponent" />
                  </node>
                  <node concept="2ShNRf" id="aV859nFjQM" role="33vP2m">
                    <node concept="1pGfFk" id="aV859nFjQN" role="2ShVmc">
                      <ref role="37wK5l" to="k2t0:~LanguageErrorsComponent.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="LanguageErrorsComponent" />
                      <node concept="37vLTw" id="aV859nFn8f" role="37wK5m">
                        <ref role="3cqZAo" node="aV859nD_3b" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BIS7" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="66Jc0LtxPSA" role="8Wnug" />
            </node>
            <node concept="1X3_iC" id="XTsne5BIS8" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3SKdUt" id="3oZ2Wq12pVM" role="8Wnug">
                <node concept="3SKdUq" id="3oZ2Wq12pVO" role="3SKWNk">
                  <property role="3SKdUp" value="checking constraints for a specific " />
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BIS9" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="3oZ2Wq0XYO4" role="8Wnug" />
            </node>
            <node concept="1X3_iC" id="XTsne5BISa" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="aV859nFjQR" role="8Wnug">
                <node concept="2OqwBi" id="aV859nFjQS" role="3clFbG">
                  <node concept="37vLTw" id="3oZ2Wq13yj9" role="2Oq$k0">
                    <ref role="3cqZAo" node="aV859nFiZR" resolve="cc" />
                  </node>
                  <node concept="liA8E" id="aV859nFjQU" role="2OqNvi">
                    <ref role="37wK5l" to="k2t0:~ConstraintsChecker.checkNode(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.checkers.LanguageErrorsComponent,org.jetbrains.mps.openapi.module.SRepository):void" resolve="checkNode" />
                    <node concept="2GrUjf" id="aV859nFnMf" role="37wK5m">
                      <ref role="2Gs0qQ" node="aV859nFhKy" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="aV859nFjQW" role="37wK5m">
                      <ref role="3cqZAo" node="aV859nFjQK" resolve="lec" />
                    </node>
                    <node concept="2YIFZM" id="aV859nFjQX" role="37wK5m">
                      <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                      <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BISb" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="aV859nFjQY" role="8Wnug" />
            </node>
            <node concept="1X3_iC" id="XTsne5BISc" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="aV859nFjQZ" role="8Wnug">
                <node concept="3cpWsn" id="aV859nFjR0" role="3cpWs9">
                  <property role="TrG5h" value="errors" />
                  <node concept="3uibUv" id="aV859nFjR1" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                    <node concept="3uibUv" id="aV859nFjR2" role="11_B2D">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3oZ2Wq13D1l" role="33vP2m">
                    <node concept="37vLTw" id="3oZ2Wq13CBv" role="2Oq$k0">
                      <ref role="3cqZAo" node="aV859nFjQK" resolve="lec" />
                    </node>
                    <node concept="liA8E" id="3oZ2Wq13Ds9" role="2OqNvi">
                      <ref role="37wK5l" to="k2t0:~LanguageErrorsComponent.getErrors():java.util.Set" resolve="getErrors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BISd" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="3oZ2Wq13JYv" role="8Wnug" />
            </node>
            <node concept="1X3_iC" id="XTsne5BISe" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="3oZ2Wq13KDg" role="8Wnug">
                <node concept="2OqwBi" id="3oZ2Wq13KDd" role="3clFbG">
                  <node concept="10M0yZ" id="3oZ2Wq13KDe" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                  <node concept="liA8E" id="3oZ2Wq13KDf" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                    <node concept="3cpWs3" id="3oZ2Wq13SXH" role="37wK5m">
                      <node concept="2OqwBi" id="3oZ2Wq13UmP" role="3uHU7w">
                        <node concept="37vLTw" id="3oZ2Wq13T$5" role="2Oq$k0">
                          <ref role="3cqZAo" node="aV859nFjR0" resolve="errors" />
                        </node>
                        <node concept="liA8E" id="3oZ2Wq13W2_" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.size():int" resolve="size" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="3oZ2Wq13QVS" role="3uHU7B">
                        <node concept="3cpWs3" id="3oZ2Wq13P4A" role="3uHU7B">
                          <node concept="Xl_RD" id="3oZ2Wq13KZJ" role="3uHU7B">
                            <property role="Xl_RC" value="node name " />
                          </node>
                          <node concept="2OqwBi" id="3oZ2Wq13PU9" role="3uHU7w">
                            <node concept="2GrUjf" id="3oZ2Wq13Ptb" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="aV859nFhKy" resolve="node" />
                            </node>
                            <node concept="2qgKlT" id="3oZ2Wq13QmW" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3oZ2Wq13RuX" role="3uHU7w">
                          <property role="Xl_RC" value=" size is " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BISf" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="3oZ2Wq1332x" role="8Wnug" />
            </node>
            <node concept="1X3_iC" id="XTsne5BISg" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbJ" id="3oZ2Wq133ID" role="8Wnug">
                <node concept="3clFbS" id="3oZ2Wq133IF" role="3clFbx">
                  <node concept="3clFbH" id="3oZ2Wq133IE" role="3cqZAp" />
                  <node concept="2Gpval" id="aV859nFjR6" role="3cqZAp">
                    <node concept="2GrKxI" id="aV859nFjR7" role="2Gsz3X">
                      <property role="TrG5h" value="e" />
                    </node>
                    <node concept="37vLTw" id="aV859nFjR8" role="2GsD0m">
                      <ref role="3cqZAo" node="aV859nFjR0" resolve="errors" />
                    </node>
                    <node concept="3clFbS" id="aV859nFjR9" role="2LFqv$">
                      <node concept="3clFbH" id="aV859nFjRa" role="3cqZAp" />
                      <node concept="3clFbF" id="aV859nFv3O" role="3cqZAp">
                        <node concept="2YIFZM" id="aV859nFvkU" role="3clFbG">
                          <ref role="1Pybhc" to="phxh:3etVqSRRx7i" resolve="SpecificChecker" />
                          <ref role="37wK5l" to="phxh:3etVqSRRx7z" resolve="addIssue" />
                          <node concept="37vLTw" id="aV859nFwxg" role="37wK5m">
                            <ref role="3cqZAo" node="aV859nDI7e" resolve="results" />
                          </node>
                          <node concept="2GrUjf" id="aV859nFwBE" role="37wK5m">
                            <ref role="2Gs0qQ" node="aV859nFhKy" resolve="node" />
                          </node>
                          <node concept="2OqwBi" id="aV859nFz3H" role="37wK5m">
                            <node concept="2GrUjf" id="aV859nFyp3" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="aV859nFjR7" resolve="e" />
                            </node>
                            <node concept="liA8E" id="aV859nFzMO" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.reportError():java.lang.String" resolve="reportError" />
                            </node>
                          </node>
                          <node concept="10M0yZ" id="aV859nFCGd" role="37wK5m">
                            <ref role="3cqZAo" to="phxh:3etVqSRKzLr" resolve="SEVERITY_ERROR" />
                            <ref role="1PxDUh" to="phxh:3etVqSRKzLq" resolve="ModelChecker" />
                          </node>
                          <node concept="Xl_RD" id="aV859nFF67" role="37wK5m">
                            <property role="Xl_RC" value="CONSTRAINT" />
                          </node>
                          <node concept="10Nm6u" id="aV859nFKO9" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="3oZ2Wq13503" role="3cqZAp" />
                </node>
                <node concept="3eOSWO" id="3oZ2Wq145IS" role="3clFbw">
                  <node concept="3cmrfG" id="3oZ2Wq146g4" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="3oZ2Wq1438o" role="3uHU7B">
                    <node concept="37vLTw" id="3oZ2Wq1346b" role="2Oq$k0">
                      <ref role="3cqZAo" node="aV859nFjR0" resolve="errors" />
                    </node>
                    <node concept="liA8E" id="3oZ2Wq144OG" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.size():int" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="XTsne5BISh" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="aV859nFjSE" role="8Wnug" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aV859nFdw$" role="3cqZAp" />
        <node concept="3clFbH" id="3oZ2Wq0XOBZ" role="3cqZAp" />
        <node concept="3cpWs6" id="aV859nFM_y" role="3cqZAp">
          <node concept="37vLTw" id="aV859nFNbc" role="3cqZAk">
            <ref role="3cqZAo" node="aV859nDI7e" resolve="results" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aV859nD_3g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="aV859nEWm4" role="jymVt" />
    <node concept="2tJIrI" id="XTsne5rzBZ" role="jymVt" />
    <node concept="2tJIrI" id="XTsne5rzte" role="jymVt" />
  </node>
</model>

