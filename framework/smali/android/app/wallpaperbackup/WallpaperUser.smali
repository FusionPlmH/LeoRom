.class public Landroid/app/wallpaperbackup/WallpaperUser;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# instance fields
.field private mBottom:I

.field private mComponent:Ljava/lang/String;

.field private mHeight:I

.field private mLeft:I

.field private mPath:Ljava/lang/String;

.field private mRight:I

.field private mRotation:I

.field private mTiltSetting:I

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    const-string v1, ""

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mLeft:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTop:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRight:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mBottom:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRotation:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mLeft:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTop:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRight:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mBottom:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRotation:I

    return-void
.end method


# virtual methods
.method public getBottomValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mBottom:I

    return v0
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    return v0
.end method

.method public getLeftValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mLeft:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRightValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRight:I

    return v0
.end method

.method public getRotationValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRotation:I

    return v0
.end method

.method public getTiltSettingValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    return v0
.end method

.method public getTopValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTop:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    return v0
.end method

.method public setBottomValue(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mBottom:I

    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    return-void
.end method

.method public setLeftValue(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mLeft:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setRightValue(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRight:I

    return-void
.end method

.method public setRotationValue(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRotation:I

    return-void
.end method

.method public setTiltSettingValue(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    return-void
.end method

.method public setTopValue(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTop:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    return-void
.end method
