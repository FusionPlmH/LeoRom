.class Lcom/android/server/desktopmode/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# static fields
.field static final TYPE_DEX_ON_PC:I = 0x3e8


# instance fields
.field private final mDisplayId:I

.field private final mFlags:I

.field private final mRealSize:Landroid/graphics/Point;

.field private final mRotation:I

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/view/Display;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    iput v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mFlags:I

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/DisplayInfo;->type:I

    iput v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    :goto_0
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "DEX_ON_PC"

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/desktopmode/DisplayInfo;

    iget v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    iget v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    iget v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget-object v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    iget v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    return v0
.end method

.method getRealSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method getRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    return v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
