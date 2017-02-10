<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:11a945c2-0e14-48de-a2c4-6ecef767b708(flow.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="urs3" ref="r:fc76aa36-3cff-41c7-b94b-eee0e8341932(jetbrains.mps.internal.collections.runtime)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="8sgc" ref="r:59c3cf65-1b2a-44bd-9070-06f87d3bb22c(flow.behavior)" />
    <import index="65f2" ref="r:5070082c-725d-4756-a585-26ca093eba5e(flow.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="540685334799965957" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenuVariable_Initializer" flags="ig" index="23wN_R" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7655327340756279373" name="variables" index="1b80Z_" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="8954657570917870539" name="jetbrains.mps.lang.editor.structure.TransformationLocation_ContextAssistant" flags="ng" index="2j_NTm" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="3360401466585705291" name="jetbrains.mps.lang.editor.structure.CellModel_ContextAssistant" flags="ng" index="18a60v" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="7580468736840446506" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_model" flags="nn" index="1rpKSd" />
      <concept id="2314756748950088783" name="jetbrains.mps.lang.editor.structure.TransformationMenuVariableReference" flags="ng" index="3yx0qK" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1178539929008" name="jetbrains.mps.lang.editor.structure.TransformationMenuVariableDeclaration" flags="ig" index="1At2My">
        <child id="540685334799973431" name="initializerBlock" index="23wLD5" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1143224066846" name="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" flags="nn" index="HtI8k">
        <child id="1143224066849" name="insertedNode" index="HtI8F" />
      </concept>
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="21CK4uW5QeO">
    <ref role="1XX52x" to="65f2:21CK4uW5P_I" resolve="RootConcept" />
    <node concept="3EZMnI" id="21CK4uW5QeQ" role="2wV5jI">
      <node concept="3F0ifn" id="6egHVRy1GQ8" role="3EZMnx">
        <property role="3F0ifm" value="ROOT NAME:" />
      </node>
      <node concept="3F0A7n" id="6egHVRy2wtX" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0A7n" id="21CK4uW5Qfr" role="3EZMnx">
        <ref role="1NtTu8" to="65f2:21CK4uW5Qfm" resolve="text" />
      </node>
      <node concept="3F0ifn" id="21CK4uW5Qfx" role="3EZMnx">
        <node concept="pVoyu" id="21CK4uW5Qf_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6egHVRy1GQR" role="3EZMnx">
        <property role="3F0ifm" value="Children Information:" />
        <node concept="pVoyu" id="6egHVRy1GRm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6egHVRy2G9W" role="3EZMnx">
        <ref role="1NtTu8" to="65f2:21CK4uW5QfE" resolve="two" />
        <node concept="l2Vlx" id="6egHVRy2G9Y" role="2czzBx" />
        <node concept="pVoyu" id="6egHVRy5$39" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="21CK4uW5QeT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="21CK4uW5Qf7">
    <ref role="1XX52x" to="65f2:21CK4uW5QeF" resolve="ChildConcept" />
    <node concept="3EZMnI" id="21CK4uW5Qf9" role="2wV5jI">
      <node concept="3F0ifn" id="XTsne5$3Te" role="3EZMnx">
        <property role="3F0ifm" value="Number of Children:" />
      </node>
      <node concept="3F0A7n" id="21CK4uW5Qfj" role="3EZMnx">
        <ref role="1NtTu8" to="65f2:6egHVRy2$GY" resolve="range" />
      </node>
      <node concept="3F0ifn" id="XTsne5$3Tu" role="3EZMnx">
        <property role="3F0ifm" value="Valid:" />
      </node>
      <node concept="3F0A7n" id="6egHVRy77GP" role="3EZMnx">
        <ref role="1NtTu8" to="65f2:6egHVRy77Gv" resolve="isvalid" />
      </node>
      <node concept="18a60v" id="XTsne5qK5a" role="3EZMnx">
        <node concept="VPM3Z" id="XTsne5qK5d" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="A1WHr" id="XTsne5qKqv" role="3vIgyS">
          <ref role="2ZyFGn" to="65f2:21CK4uW5QeF" resolve="ChildConcept" />
        </node>
      </node>
      <node concept="l2Vlx" id="21CK4uW5Qfc" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="XTsne5q9te">
    <ref role="aqKnT" to="65f2:21CK4uW5QeF" resolve="ChildConcept" />
    <node concept="1Qtc8_" id="XTsne5q9tf" role="IW6Ez">
      <node concept="2j_NTm" id="XTsne5q9tl" role="1Qtc8$" />
      <node concept="aenpk" id="XTsne5xOUV" role="1Qtc8A">
        <node concept="1At2My" id="XTsne5ytFm" role="1b80Z_">
          <property role="TrG5h" value="size" />
          <node concept="23wN_R" id="XTsne5ytFn" role="23wLD5">
            <node concept="3clFbS" id="XTsne5ytFo" role="2VODD2">
              <node concept="3clFbF" id="XTsne5yuuW" role="3cqZAp">
                <node concept="2OqwBi" id="XTsne5yyI6" role="3clFbG">
                  <node concept="2OqwBi" id="XTsne5ywa4" role="2Oq$k0">
                    <node concept="2OqwBi" id="XTsne5yuJW" role="2Oq$k0">
                      <node concept="7Obwk" id="XTsne5yuuV" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="XTsne5yvrN" role="2OqNvi">
                        <node concept="1xMEDy" id="XTsne5yvrP" role="1xVPHs">
                          <node concept="chp4Y" id="XTsne5yvIH" role="ri$Ld">
                            <ref role="cht4Q" to="65f2:21CK4uW5P_I" resolve="RootConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="XTsne5ywAY" role="2OqNvi">
                      <ref role="3TtcxE" to="65f2:21CK4uW5QfE" resolve="two" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="XTsne5y$DR" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbH" id="XTsne5A3Ix" role="3cqZAp" />
            </node>
          </node>
          <node concept="10Oyi0" id="XTsne5z3vD" role="1tU5fm" />
        </node>
        <node concept="IWgqT" id="XTsne5xYtL" role="aenpr">
          <node concept="1hCUdq" id="XTsne5xYtM" role="1hCUd6">
            <node concept="3clFbS" id="XTsne5xYtN" role="2VODD2">
              <node concept="3clFbJ" id="XTsne5yNCE" role="3cqZAp">
                <node concept="3clFbS" id="XTsne5yNCG" role="3clFbx">
                  <node concept="3cpWs6" id="XTsne5yR27" role="3cqZAp">
                    <node concept="Xl_RD" id="XTsne5xYAu" role="3cqZAk">
                      <property role="Xl_RC" value="Add More TWO " />
                    </node>
                  </node>
                  <node concept="3clFbH" id="XTsne5yNCF" role="3cqZAp" />
                </node>
                <node concept="3eOVzh" id="XTsne5yOOY" role="3clFbw">
                  <node concept="3cmrfG" id="XTsne5yOP4" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3yx0qK" id="XTsne5yNLt" role="3uHU7B">
                    <ref role="3cqZAo" node="XTsne5ytFm" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="XTsne5_BtI" role="3cqZAp" />
              <node concept="3clFbH" id="XTsne5_AaD" role="3cqZAp" />
              <node concept="3cpWs6" id="XTsne5yRaX" role="3cqZAp">
                <node concept="Xl_RD" id="XTsne5yPCJ" role="3cqZAk">
                  <property role="Xl_RC" value="you may add more nodes now.. However... this will make the model inconsistent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="XTsne5xYtO" role="IWgqQ">
            <node concept="3clFbS" id="XTsne5xYtP" role="2VODD2">
              <node concept="1X3_iC" id="XTsne5AGDf" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="3clFbF" id="XTsne5AvGi" role="8Wnug">
                  <node concept="2OqwBi" id="XTsne5AFeL" role="3clFbG">
                    <node concept="1rpKSd" id="XTsne5AF0T" role="2Oq$k0" />
                    <node concept="15TzpJ" id="XTsne5AFnB" role="2OqNvi">
                      <ref role="I8UWU" to="65f2:21CK4uW5QeF" resolve="ChildConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="XTsne5qmU5" role="3cqZAp">
                <node concept="2OqwBi" id="XTsne5qn1n" role="3clFbG">
                  <node concept="7Obwk" id="XTsne5t_T8" role="2Oq$k0" />
                  <node concept="HtI8k" id="XTsne5t_W2" role="2OqNvi">
                    <node concept="2ShNRf" id="XTsne5xehP" role="HtI8F">
                      <node concept="2fJWfE" id="XTsne5xeop" role="2ShVmc">
                        <node concept="3Tqbb2" id="XTsne5xeor" role="3zrR0E">
                          <ref role="ehGHo" to="65f2:21CK4uW5QeF" resolve="ChildConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="XTsne5ASUq" role="3cqZAp" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

