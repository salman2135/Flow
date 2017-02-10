<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:768f2cf4-8ab7-423a-bc3a-bcc167427273(flow.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="65f2" ref="r:5070082c-725d-4756-a585-26ca093eba5e(flow.structure)" />
    <import index="8sgc" ref="r:59c3cf65-1b2a-44bd-9070-06f87d3bb22c(flow.behavior)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="c8ee" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.table(JDK/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="cttk" ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="6bz1" ref="r:d3905048-7598-4a84-931a-cbbcbcda146d(jetbrains.mps.lang.intentions.methods)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="8214474548715792907" name="jetbrains.mps.lang.intentions.structure.Intention" flags="ig" index="5jCsv">
        <reference id="75717156636551009" name="forConcept" index="1hH6sV" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="8880393040217246788" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodParameterInstance" flags="ig" index="ffn8J">
        <reference id="8880393040217294897" name="decl" index="ffrpq" />
      </concept>
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
      <concept id="6478870542308703666" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MemberPlaceholder" flags="ng" index="3tTeZs">
        <property id="6478870542308703667" name="caption" index="3tTeZt" />
        <reference id="6478870542308703669" name="decl" index="3tTeZr" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
  <node concept="5jCsv" id="21CK4uW5S1t">
    <property role="TrG5h" value="checkConstraint" />
    <ref role="1hH6sV" to="65f2:21CK4uW5QeF" resolve="Two" />
    <node concept="3Tm1VV" id="21CK4uW5S1u" role="1B3o_S" />
    <node concept="3tTeZs" id="21CK4uW5S1v" role="jymVt">
      <property role="3tTeZt" value="&lt;isApplicable = true&gt;" />
      <ref role="3tTeZr" to="6bz1:6yt8uwrpTKe" resolve="isApplicable" />
    </node>
    <node concept="2tJIrI" id="21CK4uW5S1w" role="jymVt" />
    <node concept="3tTeZs" id="21CK4uW5S1x" role="jymVt">
      <property role="3tTeZt" value="&lt;not applicable in children&gt;" />
      <ref role="3tTeZr" to="6bz1:6jDmPiUSJ$K" resolve="isApplicableInChild" />
    </node>
    <node concept="2tJIrI" id="21CK4uW5S1y" role="jymVt" />
    <node concept="3tTeZs" id="21CK4uW5S1z" role="jymVt">
      <property role="3tTeZt" value="&lt;no parameter&gt;" />
      <ref role="3tTeZr" to="6bz1:2lJOBsqvJqh" resolve="Parameter" />
    </node>
    <node concept="2tJIrI" id="21CK4uW5S1$" role="jymVt" />
    <node concept="q3mfD" id="21CK4uW5S1_" role="jymVt">
      <property role="TrG5h" value="description" />
      <ref role="2VtyIY" to="6bz1:6yt8uwrpTIM" resolve="description" />
      <node concept="3Tm1VV" id="21CK4uW5S1B" role="1B3o_S" />
      <node concept="3clFbS" id="21CK4uW5S1D" role="3clF47">
        <node concept="3clFbF" id="21CK4uW5S8R" role="3cqZAp">
          <node concept="Xl_RD" id="21CK4uW5S8Q" role="3clFbG">
            <property role="Xl_RC" value="check constraint" />
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="21CK4uW5S1F" role="3clF46">
        <property role="TrG5h" value="node" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKC" resolve="node" />
        <node concept="q3mfm" id="21CK4uW5S1E" role="1tU5fm">
          <ref role="q3mfh" to="6bz1:4d05DgIyMi" />
          <ref role="1QQUv3" node="21CK4uW5S1_" resolve="description" />
        </node>
      </node>
      <node concept="ffn8J" id="21CK4uW5S1H" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKG" resolve="editorContext" />
        <node concept="3uibUv" id="21CK4uW5S1G" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="17QB3L" id="21CK4uW5S1K" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="21CK4uW5S1L" role="jymVt" />
    <node concept="q3mfD" id="21CK4uW5S1M" role="jymVt">
      <property role="TrG5h" value="execute" />
      <ref role="2VtyIY" to="6bz1:6yt8uwrpTsz" resolve="execute" />
      <node concept="3Tm1VV" id="21CK4uW5S1O" role="1B3o_S" />
      <node concept="3clFbS" id="21CK4uW5S1Q" role="3clF47">
        <node concept="3clFbH" id="21CK4uW5S9W" role="3cqZAp" />
        <node concept="3clFbH" id="3oZ2Wq128jy" role="3cqZAp" />
        <node concept="3cpWs8" id="6egHVRyefGJ" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRyefGK" role="3cpWs9">
            <property role="TrG5h" value="object" />
            <node concept="10Q1$e" id="6egHVRyefGL" role="1tU5fm">
              <node concept="10Q1$e" id="6egHVRyefGM" role="10Q1$1">
                <node concept="3uibUv" id="6egHVRyefGN" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="6egHVRyefGO" role="33vP2m">
              <node concept="3g6Rrh" id="6egHVRyefGP" role="2ShVmc">
                <node concept="10Q1$e" id="6egHVRyefGQ" role="3g7fb8">
                  <node concept="3uibUv" id="6egHVRyefGR" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6egHVRyej9d" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRyej9g" role="3cpWs9">
            <property role="TrG5h" value="rowCount" />
            <node concept="10Oyi0" id="6egHVRyej9b" role="1tU5fm" />
            <node concept="3cmrfG" id="6egHVRyek3g" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRyf9vo" role="3cqZAp" />
        <node concept="3cpWs8" id="6egHVRy8MwC" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRy8MwD" role="3cpWs9">
            <property role="TrG5h" value="frame" />
            <node concept="3uibUv" id="6egHVRy8MwE" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
            </node>
            <node concept="2ShNRf" id="6egHVRy8MKr" role="33vP2m">
              <node concept="1pGfFk" id="6egHVRy8Nfs" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JFrame.&lt;init&gt;(java.lang.String)" resolve="JFrame" />
                <node concept="Xl_RD" id="6egHVRy8Nmu" role="37wK5m">
                  <property role="Xl_RC" value="Dashboard" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRy8N_C" role="3cqZAp" />
        <node concept="3cpWs8" id="6egHVRy8Ot3" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRy8Ot4" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="6egHVRy8Ot5" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="6egHVRy8OGC" role="33vP2m">
              <node concept="1pGfFk" id="6egHVRy8PbD" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6egHVRy8PJh" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRy8Qp$" role="3clFbG">
            <node concept="37vLTw" id="6egHVRy8PJf" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRy8Ot4" resolve="panel" />
            </node>
            <node concept="liA8E" id="6egHVRy8S5e" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager):void" resolve="setLayout" />
              <node concept="2ShNRf" id="6egHVRy8SbI" role="37wK5m">
                <node concept="1pGfFk" id="6egHVRy8U4$" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRy8U7T" role="3cqZAp" />
        <node concept="3cpWs8" id="6egHVRyfnDB" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRyfnDC" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="6egHVRyfnDD" role="1tU5fm">
              <ref role="3uigEE" to="c8ee:~DefaultTableModel" resolve="DefaultTableModel" />
            </node>
            <node concept="2ShNRf" id="6egHVRyfocW" role="33vP2m">
              <node concept="1pGfFk" id="6egHVRyfoWg" role="2ShVmc">
                <ref role="37wK5l" to="c8ee:~DefaultTableModel.&lt;init&gt;()" resolve="DefaultTableModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6egHVRyfq5S" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRyfq5T" role="3cpWs9">
            <property role="TrG5h" value="table" />
            <node concept="3uibUv" id="6egHVRyfq5U" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
            </node>
            <node concept="2ShNRf" id="6egHVRyfqDp" role="33vP2m">
              <node concept="1pGfFk" id="6egHVRyfroH" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTable.&lt;init&gt;(javax.swing.table.TableModel)" resolve="JTable" />
                <node concept="37vLTw" id="6egHVRyfrAt" role="37wK5m">
                  <ref role="3cqZAo" node="6egHVRyfnDC" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRyfrGK" role="3cqZAp" />
        <node concept="3clFbF" id="6egHVRyfsQ2" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRyftAo" role="3clFbG">
            <node concept="37vLTw" id="6egHVRyfsQ0" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRyfnDC" resolve="model" />
            </node>
            <node concept="liA8E" id="6egHVRyfupZ" role="2OqNvi">
              <ref role="37wK5l" to="c8ee:~DefaultTableModel.addColumn(java.lang.Object):void" resolve="addColumn" />
              <node concept="Xl_RD" id="6egHVRyfurc" role="37wK5m">
                <property role="Xl_RC" value="Concept Name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6egHVRyfuUN" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRyfuUO" role="3clFbG">
            <node concept="37vLTw" id="6egHVRyfuUP" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRyfnDC" resolve="model" />
            </node>
            <node concept="liA8E" id="6egHVRyfuUQ" role="2OqNvi">
              <ref role="37wK5l" to="c8ee:~DefaultTableModel.addColumn(java.lang.Object):void" resolve="addColumn" />
              <node concept="Xl_RD" id="6egHVRyfuUR" role="37wK5m">
                <property role="Xl_RC" value="Node ID" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6egHVRyfwPT" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRyfwPU" role="3clFbG">
            <node concept="37vLTw" id="6egHVRyfwPV" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRyfnDC" resolve="model" />
            </node>
            <node concept="liA8E" id="6egHVRyfwPW" role="2OqNvi">
              <ref role="37wK5l" to="c8ee:~DefaultTableModel.addColumn(java.lang.Object):void" resolve="addColumn" />
              <node concept="Xl_RD" id="6egHVRyfwPX" role="37wK5m">
                <property role="Xl_RC" value="Error Type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3oZ2Wq126QD" role="3cqZAp">
          <node concept="2OqwBi" id="3oZ2Wq126QE" role="3clFbG">
            <node concept="37vLTw" id="3oZ2Wq126QF" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRyfnDC" resolve="model" />
            </node>
            <node concept="liA8E" id="3oZ2Wq126QG" role="2OqNvi">
              <ref role="37wK5l" to="c8ee:~DefaultTableModel.addColumn(java.lang.Object):void" resolve="addColumn" />
              <node concept="Xl_RD" id="3oZ2Wq126QH" role="37wK5m">
                <property role="Xl_RC" value="Message" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRyfwni" role="3cqZAp" />
        <node concept="3cpWs8" id="aV859nG0SF" role="3cqZAp">
          <node concept="3cpWsn" id="aV859nG0SG" role="3cpWs9">
            <property role="TrG5h" value="checker" />
            <node concept="3uibUv" id="aV859nG0SH" role="1tU5fm">
              <ref role="3uigEE" to="8sgc:1sdZ0ldA8GJ" resolve="StructureChecker" />
            </node>
            <node concept="2ShNRf" id="aV859nG1o0" role="33vP2m">
              <node concept="HV5vD" id="aV859nG5Wo" role="2ShVmc">
                <ref role="HV5vE" to="8sgc:1sdZ0ldA8GJ" resolve="StructureChecker" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aV859nG5X4" role="3cqZAp" />
        <node concept="3cpWs8" id="aV859nG9zk" role="3cqZAp">
          <node concept="3cpWsn" id="aV859nG9zl" role="3cpWs9">
            <property role="TrG5h" value="checkModelList" />
            <node concept="_YKpA" id="aV859nG9z9" role="1tU5fm">
              <node concept="3uibUv" id="aV859nG9zg" role="_ZDj9">
                <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                <node concept="3uibUv" id="aV859nG9zh" role="11_B2D">
                  <ref role="3uigEE" to="phxh:3etVqSRKzT$" resolve="ModelCheckerIssue" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="aV859nG9zm" role="33vP2m">
              <node concept="37vLTw" id="aV859nG9zn" role="2Oq$k0">
                <ref role="3cqZAo" node="aV859nG0SG" resolve="checker" />
              </node>
              <node concept="liA8E" id="aV859nG9zo" role="2OqNvi">
                <ref role="37wK5l" to="8sgc:aV859nD_35" resolve="checkModel" />
                <node concept="2OqwBi" id="aV859nG9zp" role="37wK5m">
                  <node concept="37vLTw" id="aV859nG9zq" role="2Oq$k0">
                    <ref role="3cqZAo" node="21CK4uW5S1S" resolve="node" />
                  </node>
                  <node concept="I4A8Y" id="aV859nG9zr" role="2OqNvi" />
                </node>
                <node concept="10Nm6u" id="aV859nG9zs" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aV859nGbiV" role="3cqZAp" />
        <node concept="2Gpval" id="aV859nGc11" role="3cqZAp">
          <node concept="2GrKxI" id="aV859nGc13" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
          <node concept="37vLTw" id="aV859nGdlV" role="2GsD0m">
            <ref role="3cqZAo" node="aV859nG9zl" resolve="checkModelList" />
          </node>
          <node concept="3clFbS" id="aV859nGc17" role="2LFqv$">
            <node concept="3clFbH" id="3oZ2Wq0YdY8" role="3cqZAp" />
            <node concept="3cpWs8" id="3oZ2Wq11iK_" role="3cqZAp">
              <node concept="3cpWsn" id="3oZ2Wq11iKC" role="3cpWs9">
                <property role="TrG5h" value="errorSeverity" />
                <node concept="17QB3L" id="3oZ2Wq11iKz" role="1tU5fm" />
                <node concept="Xl_RD" id="3oZ2Wq11le8" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3oZ2Wq11ktl" role="3cqZAp">
              <node concept="3cpWsn" id="3oZ2Wq11kto" role="3cpWs9">
                <property role="TrG5h" value="issueType" />
                <node concept="17QB3L" id="3oZ2Wq11ktj" role="1tU5fm" />
                <node concept="Xl_RD" id="3oZ2Wq11l$Q" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3oZ2Wq11l_z" role="3cqZAp" />
            <node concept="3cpWs8" id="3oZ2Wq0ZLLP" role="3cqZAp">
              <node concept="3cpWsn" id="3oZ2Wq0ZLLQ" role="3cpWs9">
                <property role="TrG5h" value="categories" />
                <node concept="3uibUv" id="3oZ2Wq0ZLKN" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="3oZ2Wq0ZLKY" role="11_B2D">
                    <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                    <node concept="3uibUv" id="3oZ2Wq0ZLKZ" role="11_B2D">
                      <ref role="3uigEE" to="g4jo:J2bOg02Gm1" resolve="CategoryKind" />
                    </node>
                    <node concept="3uibUv" id="3oZ2Wq0ZLL0" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3oZ2Wq0ZLLR" role="33vP2m">
                  <node concept="2GrUjf" id="3oZ2Wq0ZLLS" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="aV859nGc13" resolve="item" />
                  </node>
                  <node concept="liA8E" id="3oZ2Wq0ZLLT" role="2OqNvi">
                    <ref role="37wK5l" to="g4jo:J2bOg02GKK" resolve="getCategories" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3oZ2Wq0ZOCi" role="3cqZAp" />
            <node concept="2Gpval" id="3oZ2Wq0ZPJq" role="3cqZAp">
              <node concept="2GrKxI" id="3oZ2Wq0ZPJs" role="2Gsz3X">
                <property role="TrG5h" value="section" />
              </node>
              <node concept="37vLTw" id="3oZ2Wq0ZQsW" role="2GsD0m">
                <ref role="3cqZAo" node="3oZ2Wq0ZLLQ" resolve="categories" />
              </node>
              <node concept="3clFbS" id="3oZ2Wq0ZPJw" role="2LFqv$">
                <node concept="3clFbH" id="3oZ2Wq11L0l" role="3cqZAp" />
                <node concept="3clFbJ" id="3oZ2Wq11Lyr" role="3cqZAp">
                  <node concept="3clFbS" id="3oZ2Wq11Lyt" role="3clFbx">
                    <node concept="3clFbF" id="3oZ2Wq11ry9" role="3cqZAp">
                      <node concept="37vLTI" id="3oZ2Wq11s0t" role="3clFbG">
                        <node concept="2OqwBi" id="3oZ2Wq11syh" role="37vLTx">
                          <node concept="2GrUjf" id="3oZ2Wq11shy" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3oZ2Wq0ZPJs" resolve="section" />
                          </node>
                          <node concept="2OwXpG" id="3oZ2Wq11sTJ" role="2OqNvi">
                            <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3oZ2Wq11KHW" role="37vLTJ">
                          <ref role="3cqZAo" node="3oZ2Wq11iKC" resolve="errorSeverity" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3oZ2Wq11Lys" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="3oZ2Wq11MhE" role="3clFbw">
                    <node concept="37vLTw" id="3oZ2Wq11LQ6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3oZ2Wq11iKC" resolve="errorSeverity" />
                    </node>
                    <node concept="liA8E" id="3oZ2Wq11MXq" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="Xl_RD" id="3oZ2Wq11N4n" role="37wK5m">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="3oZ2Wq11NGo" role="9aQIa">
                    <node concept="3clFbS" id="3oZ2Wq11NGp" role="9aQI4">
                      <node concept="3clFbF" id="3oZ2Wq11NXj" role="3cqZAp">
                        <node concept="37vLTI" id="3oZ2Wq11OoR" role="3clFbG">
                          <node concept="2OqwBi" id="3oZ2Wq11OYG" role="37vLTx">
                            <node concept="2GrUjf" id="3oZ2Wq11ODV" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3oZ2Wq0ZPJs" resolve="section" />
                            </node>
                            <node concept="2OwXpG" id="3oZ2Wq11PyW" role="2OqNvi">
                              <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3oZ2Wq11NXi" role="37vLTJ">
                            <ref role="3cqZAo" node="3oZ2Wq11kto" resolve="issueType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3oZ2Wq14$93" role="3cqZAp" />
            <node concept="3cpWs8" id="3oZ2Wq1560M" role="3cqZAp">
              <node concept="3cpWsn" id="3oZ2Wq1560N" role="3cpWs9">
                <property role="TrG5h" value="nodeError" />
                <node concept="3uibUv" id="3oZ2Wq155ZN" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                </node>
                <node concept="0kSF2" id="3oZ2Wq1560O" role="33vP2m">
                  <node concept="3uibUv" id="3oZ2Wq1560P" role="0kSFW">
                    <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                  </node>
                  <node concept="2OqwBi" id="3oZ2Wq1560Q" role="0kSFX">
                    <node concept="2GrUjf" id="3oZ2Wq1560R" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="aV859nGc13" resolve="item" />
                    </node>
                    <node concept="liA8E" id="3oZ2Wq1560S" role="2OqNvi">
                      <ref role="37wK5l" to="g4jo:J2bOg02GJT" resolve="getPathObject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6egHVRyfy0S" role="3cqZAp">
              <node concept="2OqwBi" id="6egHVRyfyu8" role="3clFbG">
                <node concept="37vLTw" id="6egHVRyfy0Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="6egHVRyfnDC" resolve="model" />
                </node>
                <node concept="liA8E" id="6egHVRyfz6$" role="2OqNvi">
                  <ref role="37wK5l" to="c8ee:~DefaultTableModel.addRow(java.lang.Object[]):void" resolve="addRow" />
                  <node concept="2ShNRf" id="6egHVRyfzed" role="37wK5m">
                    <node concept="3g6Rrh" id="6egHVRyf$xr" role="2ShVmc">
                      <node concept="3uibUv" id="6egHVRyf$8H" role="3g7fb8">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="3oZ2Wq159l3" role="3g7hyw">
                        <node concept="37vLTw" id="3oZ2Wq158xt" role="2Oq$k0">
                          <ref role="3cqZAo" node="3oZ2Wq1560N" resolve="nodeError" />
                        </node>
                        <node concept="liA8E" id="3oZ2Wq15jvS" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~SNode.getPresentation():java.lang.String" resolve="getPresentation" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3oZ2Wq15cyr" role="3g7hyw">
                        <node concept="37vLTw" id="3oZ2Wq15bIR" role="2Oq$k0">
                          <ref role="3cqZAo" node="3oZ2Wq1560N" resolve="nodeError" />
                        </node>
                        <node concept="liA8E" id="3oZ2Wq15dsb" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3oZ2Wq11uKv" role="3g7hyw">
                        <ref role="3cqZAo" node="3oZ2Wq11kto" resolve="issueType" />
                      </node>
                      <node concept="2OqwBi" id="3oZ2Wq11zE4" role="3g7hyw">
                        <node concept="2OqwBi" id="3oZ2Wq11xqH" role="2Oq$k0">
                          <node concept="2GrUjf" id="3oZ2Wq11wXB" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="aV859nGc13" resolve="item" />
                          </node>
                          <node concept="liA8E" id="3oZ2Wq11yfr" role="2OqNvi">
                            <ref role="37wK5l" to="g4jo:J2bOg02GJN" resolve="getObject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3oZ2Wq11Bb$" role="2OqNvi">
                          <ref role="37wK5l" to="phxh:3etVqSRKzUb" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3oZ2Wq10mas" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="6egHVRy8XnY" role="3cqZAp">
          <node concept="3cpWsn" id="6egHVRy8XnZ" role="3cpWs9">
            <property role="TrG5h" value="scrollPane" />
            <node concept="3uibUv" id="6egHVRy8Xo0" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
            </node>
            <node concept="2ShNRf" id="6egHVRy8XJ8" role="33vP2m">
              <node concept="1pGfFk" id="6egHVRy8Ymn" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JScrollPane" />
                <node concept="37vLTw" id="6egHVRyfxAq" role="37wK5m">
                  <ref role="3cqZAo" node="6egHVRyfq5T" resolve="table" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRy8YHN" role="3cqZAp" />
        <node concept="3clFbF" id="6egHVRy8Zpf" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRy90fb" role="3clFbG">
            <node concept="37vLTw" id="6egHVRy8Zpd" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRy8Ot4" resolve="panel" />
            </node>
            <node concept="liA8E" id="6egHVRy9jJM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="6egHVRy9jYl" role="37wK5m">
                <ref role="3cqZAo" node="6egHVRy8XnZ" resolve="scrollPane" />
              </node>
              <node concept="10M0yZ" id="6egHVRy9kGv" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRy93kQ" role="3cqZAp" />
        <node concept="3clFbF" id="6egHVRy943A" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRy98bY" role="3clFbG">
            <node concept="2OqwBi" id="6egHVRy95Dg" role="2Oq$k0">
              <node concept="37vLTw" id="6egHVRy94_V" role="2Oq$k0">
                <ref role="3cqZAo" node="6egHVRy8MwD" resolve="frame" />
              </node>
              <node concept="liA8E" id="6egHVRy97TM" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFrame.getContentPane():java.awt.Container" resolve="getContentPane" />
              </node>
            </node>
            <node concept="liA8E" id="6egHVRy99qC" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
              <node concept="37vLTw" id="6egHVRy99E7" role="37wK5m">
                <ref role="3cqZAo" node="6egHVRy8Ot4" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6egHVRy99PQ" role="3cqZAp" />
        <node concept="3clFbF" id="6egHVRy9awQ" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRy9bvN" role="3clFbG">
            <node concept="37vLTw" id="6egHVRy9awO" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRy8MwD" resolve="frame" />
            </node>
            <node concept="liA8E" id="6egHVRy9dPk" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.pack():void" resolve="pack" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6egHVRy9ewD" role="3cqZAp">
          <node concept="2OqwBi" id="6egHVRy9fFT" role="3clFbG">
            <node concept="37vLTw" id="6egHVRy9ewB" role="2Oq$k0">
              <ref role="3cqZAo" node="6egHVRy8MwD" resolve="frame" />
            </node>
            <node concept="liA8E" id="6egHVRy9i1P" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setVisible(boolean):void" resolve="setVisible" />
              <node concept="3clFbT" id="6egHVRy9ias" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3oZ2Wq15B4N" role="3cqZAp" />
      </node>
      <node concept="ffn8J" id="21CK4uW5S1S" role="3clF46">
        <property role="TrG5h" value="node" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTIs" resolve="node" />
        <node concept="q3mfm" id="21CK4uW5S1R" role="1tU5fm">
          <ref role="q3mfh" to="6bz1:4d05DgIiRs" />
          <ref role="1QQUv3" node="21CK4uW5S1M" resolve="execute" />
        </node>
      </node>
      <node concept="ffn8J" id="21CK4uW5S1U" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <ref role="ffrpq" to="6bz1:4d05DgIzcr" resolve="editorContext" />
        <node concept="3uibUv" id="21CK4uW5S1T" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3cqZAl" id="21CK4uW5S1X" role="3clF45" />
    </node>
  </node>
</model>

