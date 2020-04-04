.class public final Lcom/samsung/android/view/ConventionalModeBar$Info;
.super Ljava/lang/Object;
.source "ConventionalModeBar.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/ConventionalModeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/ConventionalModeBar$Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public barBottomSize:I

.field public barLeftSize:I

.field public barRightSize:I

.field public barTopSize:I

.field public isFillNavigationColor:Z

.field public paddingSize:I

.field public textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/view/ConventionalModeBar$Info$1;

    invoke-direct {v0}, Lcom/samsung/android/view/ConventionalModeBar$Info$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/ConventionalModeBar$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/view/ConventionalModeBar$Info;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/view/ConventionalModeBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/view/ConventionalModeBar$Info;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    iget v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    iget v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iget v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iget v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    iget v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    iget v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    iget-boolean v3, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    return-void
.end method

.method public set(Lcom/samsung/android/view/ConventionalModeBar$Info;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/view/ConventionalModeBar$Info;->setEmpty()V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    iget v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    iget v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iget v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iget v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    iget v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    iget-boolean v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    iput-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    :goto_0
    return-void
.end method

.method public setBarSizes(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    :goto_0
    return-void
.end method

.method public setEmpty()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConventionalModeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bar size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", padding size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFillNavigationColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barTopSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
