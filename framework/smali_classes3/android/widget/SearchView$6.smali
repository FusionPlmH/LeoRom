.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/16 v3, 0x17

    if-ne p2, v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    invoke-virtual {v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v2}, Landroid/widget/SearchView;->access$1500(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v2}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v2}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget-object v1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v1, p1, p2, p3}, Landroid/widget/SearchView;->access$1600(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_2
    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v2}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/SearchView$SearchAutoComplete;->access$1700(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/16 v2, 0x42

    if-ne p2, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v5}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/widget/SearchView;->access$1800(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v2}, Landroid/widget/SearchView;->access$1500(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v5}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p2, v4, v5}, Landroid/widget/SearchView;->access$1800(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v3
.end method
