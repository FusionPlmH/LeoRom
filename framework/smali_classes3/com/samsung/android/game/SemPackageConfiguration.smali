.class public Lcom/samsung/android/game/SemPackageConfiguration;
.super Ljava/lang/Object;
.source "SemPackageConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CATEGORY_GAME_NORMAL:I = 0x1

.field public static final CATEGORY_NON_GAME_INTERNAL:I = 0x3

.field public static final CATEGORY_NON_GAME_MANAGED:I = 0xa

.field public static final CATEGORY_NON_GAME_NORMAL:I = 0x0

.field public static final CATEGORY_NON_GAME_TUNABLE:I = 0x2

.field public static final CATEGORY_UNDEFINED:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemPackageConfiguration"


# instance fields
.field private category:I

.field private categoryByUser:I

.field private dynamicSurfaceScaling:F

.field private fillBlackSurfaceOnMargins:Z

.field private optimalAspectRatio:F

.field private packageName:Ljava/lang/String;

.field private performancePolicyForSsrm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/game/SemPackageConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/game/SemPackageConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/game/SemPackageConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/game/SemPackageConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillBlackSurfaceOnMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    return-void
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    return v0
.end method

.method public getCategoryByUser()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    return v0
.end method

.method public getDynamicSurfaceScaling()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    return v0
.end method

.method public getOptimalAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePolicyForSsrm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    return-void

    :cond_1
    :goto_0
    const-string v0, "SemPackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCategory(), invalid category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCategoryByUser(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    return-void

    :cond_1
    :goto_0
    const-string v0, "SemPackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCategoryByUser(), invalid category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDynamicSurfaceScaling(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    return-void

    :cond_1
    :goto_0
    const-string v0, "SemPackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDynamicSurfaceScaling(), invalid dynamicSurfaceScaling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOptimalAspectRatio(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    return-void

    :cond_1
    :goto_0
    const-string v0, "SemPackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOptimalAspectRatio(), invalid optimalAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPerformancePolicyForSsrm(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SemPackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPerformancePolicyForSsrm(), invalid policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    return-void
.end method

.method public shouldFillBlackSurfaceOnMargins()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", performancePolicyForSsrm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optimalAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getOptimalAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicSurfaceScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getDynamicSurfaceScaling()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategoryByUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fillBlackSurfaceOnMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->shouldFillBlackSurfaceOnMargins()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
