.class Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->initShortcutViewTypePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

.field final synthetic val$titleView:Landroid/widget/CheckedTextView;

.field final synthetic val$titleView1:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->val$titleView:Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->val$titleView1:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->val$titleView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->val$titleView1:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$300(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_shortcut_type"

    const-string v2, "floating"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0x1145

    const/16 v1, 0x2340

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$200(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)V

    return-void
.end method
