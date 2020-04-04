.class public Lcom/samsung/android/game/GamePkgData;
.super Ljava/lang/Object;
.source "GamePkgData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ASPECT_RATIO_16_9:F = 1.7777778f

.field public static final CATEGORY_GAME:I = 0x1

.field public static final CATEGORY_MANAGED_APP:I = 0xa

.field public static final CATEGORY_NON_GAME:I = 0x0

.field public static final CATEGORY_SEC_GAME_FAMILY:I = 0x3

.field public static final CATEGORY_TUNABLE_NON_GAME:I = 0x2

.field public static final CATEGORY_UNDEFINED:I = -0x1

.field public static final CPU_GPU_LEVEL_DEFAULT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/game/GamePkgData;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_PERCENT_UNDEFINED:I = -0x1

.field public static final SHIFT_TEMPERATURE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GamePkgData"


# instance fields
.field private mAspectRatio:F

.field private mBlackSurfaceNeeded:Z

.field private mCategory:I

.field private mCpuLevel:I

.field private mCpuMinPercent:I

.field private mGovernorSetting:Ljava/lang/String;

.field private mGpuLevel:I

.field private mGpuMinPercent:I

.field private mIsGameSdkSupported:Z

.field private mPkgName:Ljava/lang/String;

.field private mServerCategory:I

.field private mShiftTemperature:I

.field private mSosPolicy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/game/GamePkgData$1;

    invoke-direct {v0}, Lcom/samsung/android/game/GamePkgData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/game/GamePkgData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    const v2, 0x3fe38e39

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    iput-boolean v1, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgData;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/game/GamePkgData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/GamePkgData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    const v2, 0x3fe38e39

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    iput-boolean v1, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgData;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    const v2, 0x3fe38e39

    iput v2, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    iput-boolean v1, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgData;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    iput p3, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    return v0
.end method

.method public getCpuLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    return v0
.end method

.method public getCpuMinPercent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    return v0
.end method

.method public getGovernorSetting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    return v0
.end method

.method public getGpuMinPercent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    return v0
.end method

.method public getShiftTemperature()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    return v0
.end method

.method public getSosPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public isBlackSurfaceNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    return v0
.end method

.method public isGameSdkSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    return v0
.end method

.method public isTunableApp()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    return-void
.end method

.method public setBlackSurfaceNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    return-void
.end method

.method public setCpuLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    return-void
.end method

.method public setCpuMinPercent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    return-void
.end method

.method public setGameSdkSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    return-void
.end method

.method public setGovernorSetting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    return-void
.end method

.method public setGpuLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    return-void
.end method

.method public setGpuMinPercent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    return-void
.end method

.method public setServerCategory(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    return-void
.end method

.method public setShiftTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    return-void
.end method

.method public setSosPolicy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mServerCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mShiftTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mCpuMinPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mGpuMinPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mGovernorSetting:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/GamePkgData;->mAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mBlackSurfaceNeeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgData;->mSosPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/GamePkgData;->mIsGameSdkSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
