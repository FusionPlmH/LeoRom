.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->access$1000(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->access$1000(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->access$1100(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spam_filter_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f121a13

    goto :goto_0

    :cond_0
    const v1, 0x7f121a12

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_1
    return-void
.end method
