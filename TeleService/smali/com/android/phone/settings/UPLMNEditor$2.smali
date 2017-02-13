.class Lcom/android/phone/settings/UPLMNEditor$2;
.super Ljava/lang/Object;
.source "UPLMNEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UPLMNEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/UPLMNEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/UPLMNEditor;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/settings/UPLMNEditor$2;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor$2;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor$2;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    # getter for: Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/settings/UPLMNEditor;->access$200(Lcom/android/phone/settings/UPLMNEditor;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/settings/UPLMNEditor;->genText(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/settings/UPLMNEditor;->access$300(Lcom/android/phone/settings/UPLMNEditor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "summary":Ljava/lang/String;
    const-string v1, "UPLMNEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input network id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor$2;->this$0:Lcom/android/phone/settings/UPLMNEditor;

    # getter for: Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/settings/UPLMNEditor;->access$400(Lcom/android/phone/settings/UPLMNEditor;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method
