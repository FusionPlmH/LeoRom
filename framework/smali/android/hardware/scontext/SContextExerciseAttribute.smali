.class public Landroid/hardware/scontext/SContextExerciseAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextExerciseAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextExerciseAttribute"


# instance fields
.field private mRequiredDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    iput-object v1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    iput-object v1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    iput-object p1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Required data type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v3, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    const-string v4, "Pedometer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    sget v3, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    const-string v4, "Barometer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    sget v3, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    const-string v4, "GPS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    nop

    :goto_1
    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "SContextExerciseAttribute"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "required_data_type"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0x28

    invoke-super {p0, v3, v2}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v2

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const-string v4, "SContextExerciseAttribute"

    const-string v5, "This required data type cannot have duplicated type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string v3, "SContextExerciseAttribute"

    const-string v4, "The required data type is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v4
.end method
