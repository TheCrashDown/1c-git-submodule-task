?<
?	?	
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.0.12unknown?-

global_step/Initializer/ConstConst*
_class
loc:@global_step*
_output_shapes
: *
value	B	 R *
dtype0	
?
global_step
VariableV2*
_output_shapes
: *
shared_name *
	container *
shape: *
dtype0	*
_class
loc:@global_step
?
global_step/AssignAssignglobal_stepglobal_step/Initializer/Const*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
S
inputs/x/inputConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
inputs/xPlaceholderWithDefaultinputs/x/input*
dtype0*
_output_shapes
: *
shape: 
S
inputs/y/inputConst*
_output_shapes
: *
valueB
 *    *
dtype0
d
inputs/yPlaceholderWithDefaultinputs/y/input*
_output_shapes
: *
shape: *
dtype0
J
ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
G
outputs/sumAddinputs/xinputs/y*
_output_shapes
: *
T0
K
outputs/productMulinputs/xinputs/y*
T0*
_output_shapes
: 
N
outputs/differenceSubinputs/xinputs/y*
_output_shapes
: *
T0
I
Const_1Const*
dtype0*
_output_shapes
: *
value	B : 

NoOpNoOp
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
?
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_f4e5c19d06a5458c8c2f1e39c26b946c/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
l
save/SaveV2/tensor_namesConst*
_output_shapes
:* 
valueBBglobal_step*
dtype0
e
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step*
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
o
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
h
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2	
?
save/AssignAssignglobal_stepsave/RestoreV2*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
(
save/restore_shardNoOp^save/Assign
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
?
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_cf81b3135f5d4f7aba359b1ec5b2938a/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
n
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
g
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_step*
dtypes
2	
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
_output_shapes
:*

axis *
T0*
N
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0
q
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:* 
valueBBglobal_step*
dtype0
j
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2	
?
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
,
save_1/restore_shardNoOp^save_1/Assign
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"H
	variables;9
7
global_step:0global_step/Assignglobal_step/read:0" 
global_step

global_step:0" 
legacy_init_op


group_deps*y
productn

y

inputs/y:0 

x

inputs/x:0 "
outputs
outputs/product:0 tensorflow/serving/predict*q
sumj

y

inputs/y:0 

x

inputs/x:0 
outputs
outputs/sum:0 tensorflow/serving/predict*}
serving_defaultj

x

inputs/x:0 

y

inputs/y:0 
outputs
outputs/sum:0 tensorflow/serving/predict*

differenceq

x

inputs/x:0 

y

inputs/y:0 %
outputs
outputs/difference:0 tensorflow/serving/predict