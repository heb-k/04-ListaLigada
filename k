void excluirElemento()
{
    if (primeiro == NULL) {
        cout << "Lista vazia, nao ha elementos para excluir.\n";
        return;
    }

    int elemento;
    cout << "Digite o elemento que deseja excluir: ";
    cin >> elemento;

    NO* anterior = NULL;
    NO* atual = primeiro;

    // Busca pelo elemento a ser excluído
    while (atual != NULL && atual->valor != elemento) {
        anterior = atual;
        atual = atual->prox;
    }

    // Se o elemento não foi encontrado
    if (atual == NULL) {
        cout << "Elemento nao encontrado na lista.\n";
        return;
    }

    // Se o elemento a ser excluído está no início da lista
    if (anterior == NULL) {
        primeiro = atual->prox;
    } else {
        anterior->prox = atual->prox;
    }

    free(atual);
    cout << "Elemento " << elemento << " excluido com sucesso.\n";
}
