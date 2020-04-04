.class Lcom/samsung/android/settings/security/Password$1;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/Password;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/Password;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/Password;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/Password$1;->this$0:Lcom/samsung/android/settings/security/Password;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/16 v2, 0x19

    const/4 v3, 0x4

    const/16 v4, 0x43

    const/16 v5, 0x14

    if-eq p2, v5, :cond_0

    if-eq p2, v4, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/security/Password$1;->this$0:Lcom/samsung/android/settings/security/Password;

    invoke-static {v6}, Lcom/samsung/android/settings/security/Password;->access$000(Lcom/samsung/android/settings/security/Password;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-lt v6, v7, :cond_0

    return v0

    :cond_0
    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x7

    if-lt p2, v1, :cond_1

    const/16 v1, 0x10

    if-le p2, v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
