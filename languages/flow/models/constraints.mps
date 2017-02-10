<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cdc1d91a-4105-4b88-9d1a-d886d1db964b(flow.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="65f2" ref="r:5070082c-725d-4756-a585-26ca093eba5e(flow.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="21CK4uW5Qge">
    <ref role="1M2myG" to="65f2:21CK4uW5QeF" resolve="Two" />
    <node concept="EnEH3" id="6egHVRy2rmv" role="1MhHOB">
      <ref role="EomxK" to="65f2:6egHVRy2$GY" resolve="range" />
      <node concept="QB0g5" id="6egHVRy2rmx" role="QCWH9">
        <node concept="3clFbS" id="6egHVRy2rmy" role="2VODD2">
          <node concept="3clFbH" id="6egHVRy59Xk" role="3cqZAp" />
          <node concept="3clFbJ" id="6egHVRy5a_G" role="3cqZAp">
            <node concept="3clFbS" id="6egHVRy5a_I" role="3clFbx">
              <node concept="3clFbH" id="6egHVRy5FrM" role="3cqZAp" />
              <node concept="3cpWs6" id="6egHVRy5rOB" role="3cqZAp">
                <node concept="3clFbT" id="6egHVRy5s1M" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="6egHVRy5cqi" role="3clFbw">
              <node concept="1eOMI4" id="6egHVRy5Y$Q" role="3fr31v">
                <node concept="3eOVzh" id="6egHVRy5Wud" role="1eOMHV">
                  <node concept="2OqwBi" id="6egHVRy5UZQ" role="3uHU7B">
                    <node concept="EsrRn" id="6egHVRy5UJG" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6egHVRy5Vpy" role="2OqNvi">
                      <ref role="3TsBF5" to="65f2:6egHVRy2$GY" resolve="range" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6egHVRy5X9j" role="3uHU7w">
                    <property role="3cmrfH" value="40" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6egHVRy5seY" role="3cqZAp">
            <node concept="3clFbT" id="6egHVRy5seX" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="6egHVRy7Ext" role="1MhHOB">
      <ref role="EomxK" to="65f2:6egHVRy77Gv" resolve="isvalid" />
      <node concept="QB0g5" id="6egHVRy7F0k" role="QCWH9">
        <node concept="3clFbS" id="6egHVRy7F0l" role="2VODD2">
          <node concept="3clFbF" id="6egHVRy7F7w" role="3cqZAp">
            <node concept="2OqwBi" id="6egHVRy7Fnm" role="3clFbG">
              <node concept="EsrRn" id="6egHVRy7F7v" role="2Oq$k0" />
              <node concept="3TrcHB" id="6egHVRy7FBJ" role="2OqNvi">
                <ref role="3TsBF5" to="65f2:6egHVRy77Gv" resolve="isvalid" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3oZ2Wq12zfl">
    <ref role="1M2myG" to="65f2:21CK4uW5P_I" resolve="One" />
    <node concept="EnEH3" id="3oZ2Wq12zfm" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
</model>

