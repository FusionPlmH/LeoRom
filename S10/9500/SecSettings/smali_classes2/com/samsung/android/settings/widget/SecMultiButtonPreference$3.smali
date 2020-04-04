.class Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;
.super Ljava/lang/Object;
.source "SecMultiButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$002(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$100(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$000(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$200(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$000(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$300(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)V

    return-void
.end method
