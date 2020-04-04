.class Lcom/samsung/android/content/smartclip/ReflectionUtils;
.super Ljava/lang/Object;
.source "SmartClipDataCropperImpl.java"


# static fields
.field public static final MATCH_TYPE_CLASS_NAME_ONLY:I = 0x1

.field public static final MATCH_TYPE_FULL_NAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpClassHierarchy(Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- Class hierarchy dump start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "ReflectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- Class name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    const-string v5, "ReflectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   + interfaces : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "ReflectionUtils"

    const-string v2, "-------- Class hierarchy dump finished ----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpObjectFields(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- Field list dump start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v10, p8

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    invoke-static {v11, v1}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v15, 0x0

    const/4 v8, 0x1

    if-eq v3, v4, :cond_1

    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v15

    :goto_0
    move/from16 v16, v3

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eq v3, v8, :cond_3

    const-string/jumbo v3, "java.lang."

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-ne v3, v8, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [arraySize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v9}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v7, v2

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getIndentString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    const-string v2, ""

    :goto_3
    const-string v3, "[L"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_6

    const-string v2, ""

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object/from16 v4, p2

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string v3, ""

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_8

    const-string v2, ""

    goto :goto_6

    :cond_8
    move-object/from16 v2, p4

    :goto_6
    if-eqz v14, :cond_9

    move-object/from16 v17, v4

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_d

    goto :goto_7

    :cond_9
    move-object/from16 v17, v4

    :goto_7
    if-eqz v10, :cond_a

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_d

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eq v4, v8, :cond_c

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_b

    goto :goto_8

    :cond_b
    const-string v4, "ReflectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    :goto_8
    const-string v4, "ReflectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_9
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez v16, :cond_1e

    add-int/lit8 v2, p5, 0x1

    if-ge v2, v13, :cond_f

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    invoke-static {v1, v9}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v10

    const/16 v18, 0x64

    nop

    :goto_a
    move v8, v15

    const/16 v2, 0x64

    if-ge v8, v10, :cond_13

    if-ge v8, v2, :cond_13

    invoke-static {v1, v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v0

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    move-object/from16 v23, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move v0, v8

    move-object/from16 v28, v9

    move v12, v10

    goto :goto_c

    :cond_11
    move-object/from16 v21, v0

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    add-int/lit8 v22, p5, 0x1

    move-object v2, v4

    move-object/from16 v23, v3

    move-object v3, v11

    move-object/from16 v24, v4

    move-object v4, v0

    move-object/from16 v25, v5

    move-object v5, v15

    move-object/from16 v26, v6

    move-object/from16 v6, v20

    move-object/from16 v27, v7

    move/from16 v7, v22

    move v0, v8

    move v8, v13

    move-object/from16 v28, v9

    move-object v9, v14

    move v12, v10

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move v0, v8

    move-object/from16 v28, v9

    move v12, v10

    :goto_c
    add-int/lit8 v15, v0, 0x1

    move v10, v12

    move-object/from16 v0, v21

    move-object/from16 v3, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v9, v28

    goto/16 :goto_a

    :cond_13
    move-object/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v9

    move v12, v10

    if-le v12, v2, :cond_14

    const-string v0, "ReflectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v26

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t[Dumped until index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_14
    move-object/from16 v10, v26

    :goto_d
    move-object/from16 v31, v10

    move-object/from16 v12, v28

    goto/16 :goto_18

    :cond_15
    move-object/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    move-object v10, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v9

    move-object/from16 v12, v28

    invoke-static {v12}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->isPrimitiveDataType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "java.lang."

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    move-object/from16 v9, v21

    :goto_e
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v7, v8

    move v6, v15

    :goto_f
    if-ge v6, v7, :cond_1b

    aget-object v5, v8, v6

    const/4 v0, 0x0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    const/4 v4, 0x1

    :goto_10
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_13

    :catch_3
    move-exception v0

    const/4 v4, 0x1

    :goto_11
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_12
    nop

    :goto_13
    move-object v0, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_16

    move v2, v4

    goto :goto_14

    :cond_16
    move v2, v15

    :goto_14
    move/from16 v18, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_17

    move v2, v4

    goto :goto_15

    :cond_17
    move v2, v15

    :goto_15
    move/from16 v19, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v21

    if-nez v21, :cond_1a

    if-eqz v19, :cond_19

    if-nez v18, :cond_18

    goto :goto_16

    :cond_18
    move/from16 v26, v4

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v24, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    goto :goto_17

    :cond_19
    :goto_16
    add-int/lit8 v2, p5, 0x1

    if-ge v2, v13, :cond_1a

    const/16 v22, 0x0

    add-int/lit8 v24, p5, 0x1

    move-object v2, v0

    move-object v3, v11

    move/from16 v26, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v5

    move/from16 v28, v6

    move-object/from16 v6, v20

    move/from16 v29, v7

    move/from16 v7, v24

    move-object/from16 v24, v8

    move v8, v13

    move-object/from16 v30, v9

    move-object v9, v14

    move-object/from16 v31, v10

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_1a
    move/from16 v26, v4

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v24, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    :goto_17
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v8, v24

    move/from16 v7, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v24, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    const/16 v26, 0x1

    move-object/from16 v2, v30

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto/16 :goto_e

    :cond_1c
    move-object v2, v9

    move-object/from16 v31, v10

    move-object/from16 v21, v2

    goto :goto_18

    :cond_1d
    move-object/from16 v31, v10

    :goto_18
    return-void

    :cond_1e
    move-object/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    move-object/from16 v31, v6

    move-object/from16 v27, v7

    move-object v12, v9

    return-void
.end method

.method public static dumpObjectFieldsWithClassTypeFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- Field list dump start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / Object type filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpObjectFieldsWithValueFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- Field list dump start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / Value filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpObjectMethods(Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- Method list dump start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -- Methods of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ReflectionUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "ReflectionUtils"

    const-string v2, "-------- Method list dump finished ----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method protected static findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected static getArraySize(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "[I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, [I

    array-length v0, v1

    goto/16 :goto_0

    :cond_0
    const-string v1, "[Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, [Z

    array-length v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "[J"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, [J

    array-length v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "[B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, [B

    array-length v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "[F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, [F

    array-length v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "[C"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, [C

    array-length v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "[S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, [S

    array-length v0, v1

    goto :goto_0

    :cond_6
    const-string v1, "[D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, [D

    array-length v0, v1

    goto :goto_0

    :cond_7
    const-string v1, "[L"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    array-length v0, v1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    move-object v3, p0

    check-cast v3, [I

    aget v3, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :cond_0
    const-string v2, "[Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Boolean;

    move-object v3, p0

    check-cast v3, [Z

    aget-boolean v3, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v2

    :cond_1
    const-string v2, "[J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Long;

    move-object v3, p0

    check-cast v3, [J

    aget-wide v3, v3, p1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    :cond_2
    const-string v2, "[B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/Byte;

    move-object v3, p0

    check-cast v3, [B

    aget-byte v3, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    return-object v2

    :cond_3
    const-string v2, "[F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/Float;

    move-object v3, p0

    check-cast v3, [F

    aget v3, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    :cond_4
    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/Integer;

    move-object v3, p0

    check-cast v3, [C

    aget-char v3, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :cond_5
    const-string v2, "[S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/Short;

    move-object v3, p0

    check-cast v3, [S

    aget-short v3, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    return-object v2

    :cond_6
    const-string v2, "[D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/Double;

    move-object v3, p0

    check-cast v3, [D

    aget-wide v3, v3, p1

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    :cond_7
    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p1

    return-object v2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v7

    goto :goto_2

    :catch_1
    move-exception v7

    nop

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    return-object v0
.end method

.method protected static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    if-eqz v1, :cond_b

    if-eqz v10, :cond_b

    move/from16 v13, p6

    if-ne v12, v13, :cond_0

    move/from16 v1, p1

    move-object/from16 v15, p4

    goto/16 :goto_f

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    move-object v14, v0

    if-eqz v14, :cond_a

    const/4 v15, 0x1

    move/from16 v9, p7

    if-ne v9, v15, :cond_1

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "android.view."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v15, :cond_a

    const-string/jumbo v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v15, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v7, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_9

    aget-object v5, v8, v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v2, :cond_7

    const/16 v16, 0x0

    move/from16 v1, p1

    if-eq v1, v15, :cond_2

    :try_start_1
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v17

    move/from16 v19, v0

    move/from16 v0, v16

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v15, p4

    :goto_2
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v15, p4

    :goto_3
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    goto/16 :goto_c

    :cond_2
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    const-string v0, "."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6

    move/from16 v16, v0

    nop

    :goto_4
    const/4 v15, 0x1

    if-ne v0, v15, :cond_6

    const/16 v16, 0x0

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v20, v17

    move/from16 v21, v0

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_3

    const/16 v16, 0x1

    goto :goto_6

    :cond_3
    nop

    move/from16 v0, v21

    goto :goto_5

    :cond_4
    move/from16 v21, v0

    :goto_6
    if-nez v16, :cond_5

    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_5
    move-object/from16 v15, p4

    :goto_7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    goto :goto_8

    :cond_6
    move-object/from16 v15, p4

    move/from16 v21, v0

    add-int/lit8 v0, v12, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move v3, v1

    move-object/from16 v18, v4

    move-object v4, v10

    move-object/from16 v20, v5

    move v5, v11

    move/from16 v22, v6

    move-object v6, v15

    move/from16 v23, v7

    move v7, v0

    move-object/from16 v24, v8

    move v8, v13

    move/from16 v9, p7

    :try_start_5
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V

    :goto_8
    if-lez v11, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    if-lt v0, v11, :cond_8

    return-void

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_b

    :cond_7
    move/from16 v1, p1

    move-object/from16 v15, p4

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    goto :goto_c

    :catch_8
    move-exception v0

    move/from16 v1, p1

    :goto_9
    move-object/from16 v15, p4

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    :goto_a
    goto :goto_d

    :catch_9
    move-exception v0

    move/from16 v1, p1

    :goto_b
    move-object/from16 v15, p4

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    :cond_8
    :goto_c
    nop

    :goto_d
    add-int/lit8 v6, v22, 0x1

    move/from16 v9, p7

    move/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v1, p0

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_9
    move/from16 v1, p1

    move-object/from16 v15, p4

    move-object/from16 v24, v8

    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    nop

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_a
    :goto_e
    move/from16 v1, p1

    move-object/from16 v15, p4

    return-void

    :cond_b
    move/from16 v1, p1

    move-object/from16 v15, p4

    move/from16 v13, p6

    :goto_f
    return-void
.end method

.method public static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IZ)[Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static getIndentString(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static isPrimitiveDataType(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
