.class public abstract Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.super Ljava/lang/Object;
.source "SprObjectBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CIRCLE:B = 0x1t

.field public static final TYPE_ELLIPSE:B = 0x2t

.field public static final TYPE_GROUP:B = 0x10t

.field public static final TYPE_LINE:B = 0x3t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_PATH:B = 0x4t

.field public static final TYPE_RECTANGLE:B = 0x5t

.field public static final TYPE_USE:B = 0x11t

.field private static final sCapArray:[Landroid/graphics/Paint$Cap;

.field private static final sJoinArray:[Landroid/graphics/Paint$Join;


# instance fields
.field public alpha:F

.field public fillPaint:Landroid/graphics/Paint;

.field public hasFillAnimation:Z

.field public hasStrokeAnimation:Z

.field public isVisibleFill:Z

.field public isVisibleStroke:Z

.field public mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

.field public final mType:B

.field public shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

.field public strokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v0, v0, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    return-void
.end method

.method protected constructor <init>(B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    return-void
.end method

.method private applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v2, v4, :cond_3

    const/16 v4, 0x23

    if-eq v2, v4, :cond_2

    const/16 v4, 0x40

    if-eq v2, v4, :cond_1

    const/16 v4, 0x61

    if-eq v2, v4, :cond_1

    const/16 v4, 0x70

    if-eq v2, v4, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "is not supported type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/16 :goto_3

    :pswitch_1
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_3

    :pswitch_2
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    iget-byte v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    :pswitch_3
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    iget-byte v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_3

    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    goto :goto_3

    :cond_1
    goto :goto_3

    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iget-byte v4, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->colorType:B

    packed-switch v4, :pswitch_data_2

    goto :goto_1

    :pswitch_4
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :pswitch_5
    goto :goto_1

    :pswitch_6
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :pswitch_7
    iput-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    nop

    :goto_1
    goto :goto_3

    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iget-byte v4, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->colorType:B

    packed-switch v4, :pswitch_data_3

    goto :goto_2

    :pswitch_8
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :pswitch_9
    goto :goto_2

    :pswitch_a
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :pswitch_b
    iput-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    nop

    :goto_2
    goto :goto_3

    :cond_4
    nop

    :goto_3
    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3030

    if-lt v4, v5, :cond_0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v5, 0x3032

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    :cond_0
    sparse-switch v2, :sswitch_data_0

    sget-object v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown attribute id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto/16 :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_4
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_7
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_8
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_9
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_a
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_b
    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x3 -> :sswitch_9
        0x20 -> :sswitch_8
        0x23 -> :sswitch_7
        0x25 -> :sswitch_6
        0x26 -> :sswitch_5
        0x28 -> :sswitch_4
        0x29 -> :sswitch_3
        0x40 -> :sswitch_2
        0x61 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private saveAttributeToSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/16 v4, 0x20

    const/high16 v5, 0x437f0000    # 255.0f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    const/16 v4, 0x61

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    sget-object v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "is not supported type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    :pswitch_0
    goto/16 :goto_1

    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    mul-float/2addr v5, p3

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    mul-float/2addr v5, p3

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :cond_6
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-byte v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_1
    goto/16 :goto_1

    :pswitch_2
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v5, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v6, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v7, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v8, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto :goto_1

    :pswitch_3
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    :pswitch_4
    goto :goto_1

    :pswitch_5
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v7, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v8, v8, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    :pswitch_6
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    :cond_7
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    iget v5, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    iget v6, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    iget v7, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    iget v8, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    nop

    :cond_8
    :goto_1
    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected clearShadowLayer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    :cond_2
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getSPRSize()I
    .locals 4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getTotalAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getTotalElementCount()I
.end method

.method public abstract getTotalSegmentCount()I
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-boolean v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 3

    move-object v0, p2

    move-object v1, p3

    iput-boolean p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean p5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iput-object p6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    if-eqz p3, :cond_3

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object v1, v2

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_6
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public removeAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setShadowLayer()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    const v1, 0x3f13cd36

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v0, v3

    :cond_1
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    sub-float v2, v0, v2

    div-float v1, v2, v1

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    sub-float v2, v0, v2

    div-float v1, v2, v1

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_5
    :goto_2
    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->saveAttributeToSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
