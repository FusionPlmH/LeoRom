.class Lcom/android/systemui/qs/QSServiceBox$3;
.super Landroid/database/ContentObserver;
.source "QSServiceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSServiceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSServiceBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSServiceBox;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "QSServiceBox"

    const-string v1, "Power key Settings onChange "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSServiceBox;->updateVisibilities()V

    return-void
.end method
