.class public Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppInfo"
.end annotation


# instance fields
.field public isActive:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z

    return-void
.end method
