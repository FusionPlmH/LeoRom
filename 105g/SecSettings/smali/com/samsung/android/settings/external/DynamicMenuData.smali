.class public Lcom/samsung/android/settings/external/DynamicMenuData;
.super Ljava/lang/Object;
.source "DynamicMenuData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;,
        Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/external/DynamicMenuData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mIsSummaryPrimaryDark:Z

.field private mIsVisible:Z

.field private mKey:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/external/DynamicMenuData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$000(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$100(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$200(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$300(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$400(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$500(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$600(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;Lcom/samsung/android/settings/external/DynamicMenuData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;-><init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    return v0
.end method

.method public getColorPrimaryDark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
