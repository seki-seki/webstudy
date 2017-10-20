package jp.co.tis.adc.webstudy.validation;

public class ClientErrorException extends RuntimeException {

    private final int statusCode;

    public ClientErrorException() {
        this(400);
    }
    public ClientErrorException(int statusCode) {
        if (statusCode < 400 || 500 < statusCode) {
            throw new IllegalArgumentException("invalid status code [" + statusCode + "].");
        }
        this.statusCode = statusCode;
    }

    /**
     * ステータスコードを取得する.
     * @return ステータスコード
     */
    public int getStatusCode() {
        return statusCode;
    }

}