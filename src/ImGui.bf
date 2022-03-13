using System;

namespace ImGui
{
	extension ImGui
	{
		public static void AddObj(Variant obj, StringView name, int uid){
			var obj;
			var type = obj.VariantType;
			// Use object uid as identifier. Most commonly you could also use the object pointer as a base ID.
			ImGui.PushID((void*)uid);

			// Text and Tree nodes are less high than framed widgets, using AlignTextToFramePadding() we add vertical spacing to make the tree lines equal high.
			ImGui.TableNextRow();
			ImGui.TableSetColumnIndex(0);
			ImGui.AlignTextToFramePadding();

			if(type.IsPrimitive){
				//ImGui.PushID((void*)uid); // Use field index as identifier.

				    // Here we use a TreeNode to highlight on hover (we could use e.g. Selectable as well)
				    /*ImGui.TableNextRow();
				    ImGui.TableSetColumnIndex(0);
				    ImGui.AlignTextToFramePadding();*/
				    ImGui.TreeNodeFlags flags = .Leaf | .NoTreePushOnOpen | .Bullet;
				    ImGui.TreeNodeEx("Field", flags, name.ToScopeCStr!(), uid);

				    ImGui.TableSetColumnIndex(1);
				    ImGui.SetNextItemWidth(-float.Epsilon);
				switch(type){
				case typeof(int), typeof(int64): ImGui.DragScalar("##value", .S64, obj.DataPtr);
				case typeof(uint), typeof(uint64): ImGui.DragScalar("##value", .U64, obj.DataPtr);
				case typeof(int32): ImGui.DragScalar("##value", .S32, obj.DataPtr);
				case typeof(uint32): ImGui.DragScalar("##value", .U32, obj.DataPtr);
				case typeof(int16): ImGui.DragScalar("##value", .S16, obj.DataPtr);
				case typeof(uint16): ImGui.DragScalar("##value", .U16, obj.DataPtr);
				case typeof(int8): ImGui.DragScalar("##value", .S8, obj.DataPtr);
				case typeof(uint8): ImGui.DragScalar("##value", .U8, obj.DataPtr);
				case typeof(float): ImGui.DragFloat("##value", (.)obj.DataPtr);
				case typeof(double): ImGui.DragScalar("##value", .Double, obj.DataPtr);
				default:{
					ImGui.Text($"{obj}");
				}
				}

				    ImGui.NextColumn();

				ImGui.PopID();
				return;
			}
			if(type.IsStruct){
				var attr = type.GetCustomAttribute<VectorDebugAttribute>().GetValueOrDefault();
				if(attr != default){
					ImGui.TreeNodeFlags flags = .Leaf | .NoTreePushOnOpen | .Bullet;
					ImGui.TreeNodeEx("Field", flags, name.ToScopeCStr!(), uid);

					ImGui.TableSetColumnIndex(1);
					ImGui.SetNextItemWidth(-float.Epsilon);

					//var attr = type.GetCustomAttribute<VectorDebugAttribute>().Get();
					ImGui.DragScalarN("##value", attr.datatype, obj.DataPtr, attr.vectorlength, 0.01f);

					ImGui.NextColumn();
						ImGui.PopID();
						return;
				}
			}
			{
				
				bool node_open = ImGui.TreeNode("Object", name.ToScopeCStr!(), obj.GetType().ToString(..scope .()), uid);
				ImGui.TableSetColumnIndex(1);
				ImGui.Text(scope $"{obj.IsObject}");

				if (node_open)
				{
					//var fields = type.GetFields(.Instance | .Public);
				    for (var i < type.FieldCount)
				    {
						var field = type.GetField(i).Get();
						if(field.IsStatic) continue;
				        AddObj(field.GetValueReference(obj.DataPtr, type), field.Name, field.MemberOffset);
				    }
				    ImGui.TreePop();
				}
				ImGui.PopID();
			}
			
		}
	}

	[AttributeUsage(.Struct, .ReflectAttribute)]
	public struct VectorDebugAttribute : Attribute{
		public ImGui.DataType datatype;
		public int32 vectorlength;

		public this(
			ImGui.DataType datatype,
			int32 vectorlength
		){
			this.datatype = datatype;
			this.vectorlength = vectorlength;
		}
	}
}