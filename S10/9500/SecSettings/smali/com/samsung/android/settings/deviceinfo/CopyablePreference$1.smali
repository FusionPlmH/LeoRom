.class Lcom/samsung/android/settings/deviceinfo/CopyablePreference$1;
.super Ljava/lang/Object;
.source "CopyablePreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/CopyablePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/CopyablePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/CopyablePreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CopyablePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/CopyablePreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CopyablePreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/CopyablePreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CopyablePreference;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->copyPreference(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/CopyablePreference;)V

    const/4 v0, 0x1

    return v0
.end method
