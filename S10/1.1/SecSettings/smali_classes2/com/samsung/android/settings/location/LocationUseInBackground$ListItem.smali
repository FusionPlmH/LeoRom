.class Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
.super Ljava/lang/Object;
.source "LocationUseInBackground.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationUseInBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private mAppSurpportsRuntimePermissions:Z

.field private mGranted:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsEnable:Z

.field private mPackageinfo:Landroid/content/pm/PackageInfo;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iput-boolean p4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIsEnable:Z

    iput-object p3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    iput-boolean p6, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZLcom/samsung/android/settings/location/LocationUseInBackground$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I

    move-result p1

    return p1
.end method
