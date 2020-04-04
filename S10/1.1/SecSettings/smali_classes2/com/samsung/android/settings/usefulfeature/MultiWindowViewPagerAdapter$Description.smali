.class Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
.super Ljava/lang/Object;
.source "MultiWindowViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Description"
.end annotation


# instance fields
.field animation:I

.field key:Ljava/lang/String;

.field summary:Ljava/lang/String;

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    return-void
.end method
